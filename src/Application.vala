/*
* SPDX-License-Identifier: GPL-3.0-or-later
* SPDX-FileCopyrightText: 2021 Gabriel Cabrera <gabrielcabrera@utexas.edu>
*/
public class MyApp : Gtk.Application {
    public MyApp() {
        Object(application_id:"com.github.gabrielangelcabrera.vala_app",
            flags: ApplicationFlags.FLAGS_NONE);
    }
    protected override void activate() {
        var main_window = new Gtk.ApplicationWindow(this) {
            default_height = 300, default_width = 300, title = "Hello World"
        };
        var label = new Gtk.Label("Hello Again World");
        main_window.add(label);
        main_window.show_all();
    }
    public static int main(string[] args) {
        return new MyApp().run(args);
    }
}