import { Application } from "@hotwired/stimulus";
import DropdownController from "./dropdown_controller"; 

const application = Application.start();
application.debug = false;
window.Stimulus = application;

application.register("dropdown", DropdownController);

