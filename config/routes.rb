Rails.application.routes.draw do
  get("/", controller: "users", action: "index")
  get("/users", controller: "users", action: "index")
  get("/users/:username", controller: "users", action: "show")
  get("/photos", controller: "photos", action: "index")
  get("/photos/:photo_id", controller: "photos", action: "show")
  get("/delete_photo/:photo_id", controller: "photos", action: "delete")
  get("/insert_photo_record", controller: "photos", action: "create")
  get("/update_photo/:photo_id", controller: "photos", action: "update")
end
