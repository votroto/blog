class Turtle {
  constructor(canvas) {
    this.canvas = canvas;
    this.ctx = canvas.getContext("2d");
    this.reset();
  }

  forward(distance) {
    let newX = this.x + distance * Math.cos(this.angle * Math.PI / 180);
    let newY = this.y + distance * Math.sin(this.angle * Math.PI / 180);

    if (this.pen) {
      this.ctx.beginPath();
      this.ctx.moveTo(this.x, this.y);
      this.ctx.lineTo(newX, newY);
      this.ctx.stroke();
    }

    this.x = newX;
    this.y = newY;
  }

  reset() {
    this.canvas.width = this.canvas.clientWidth;
    this.canvas.height = this.canvas.clientHeight;

    this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
    this.x = this.canvas.width / 2;
    this.y = this.canvas.height / 2;
    this.angle = 0;
    this.pen = true;
    this.ctx.strokeStyle = `black`;
  }

  hue(h) {
    this.ctx.strokeStyle = `oklch(50% 0.17 ${h})`;
  }
}

window.addEventListener("load", async () => {

  const expression = document.getElementById("turtle-expression");

  const canvas = document.getElementById("turtle-canvas");
  const turtle = new Turtle(canvas);

  expression.addEventListener('keydown', function (event) {
    if (event.key === 'Enter' && !event.shiftKey) {
      // enter without shift should not produce a new line.
      event.preventDefault();
    }
  });

  const randAngle = 91 + Math.floor(Math.random() * 11);
  expression.value = `(let loop ((i 0))
  (if (< i 800)
    (begin
      (hue i)
      (forward i)
      (right ${randAngle})
      (loop (+ i 1)))))`;

  await Scheme.load_main("repl.wasm", {
    user_imports: {
      turtle: {
        forward(x) { turtle.forward(x); },
        right(x) { turtle.angle += x; },
        left(x) { turtle.angle -= x; },
        hue(x) { turtle.hue(x); },
        up() { turtle.pen = false; },
        down() { turtle.pen = true; },
        reset() { turtle.reset(); }
      },
      main: {
        setLog(str) {
          expression.setCustomValidity(str);
          if (str) {
            expression.reportValidity();
          }
        },
        getExpression() { return expression.value; }
      },
      event: {
        preventDefault(event) { event.preventDefault(); },
        keyboardKey(event) { return event.key; },
        keyboardShiftKey(event) { return event.shiftKey; }
      },
      document: {
        getElementById: Document.prototype.getElementById.bind(document),
      },
      element: {
        addEventListener(elem, name, f) {
          elem.addEventListener(name, f);
        },
      }
    }
  });
});
