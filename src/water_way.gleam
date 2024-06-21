import lustre
import lustre/attribute
import lustre/element
import lustre/element/html

pub fn main() {
  let app =
    lustre.element(html.div(
      [
        // attribute.class("bg-cyan-300"),
        attribute.class("text-center"),
        attribute.class("flex"),
        attribute.class("flex-col"),
      ],
      [
        html.h1([attribute.class("text-xl"), attribute.class("bold")], [
          element.text("Hello from water_way"),
        ]),
        html.figure(
          [
            attribute.classes([
              #("mx-auto", True),
              #("rounded-xl", True),
              #("shadow-xl", True),
            ]),
          ],
          [
            html.img([
              attribute.class("rounded-xl"),
              attribute.class("image-center"),
              attribute.src("https://c.tenor.com/y3yHviIAcg4AAAAd/tenor.gif"),
            ]),
            // html.figcaption([], [element.text("Hooray")]),
          ],
        ),
      ],
    ))
  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}
