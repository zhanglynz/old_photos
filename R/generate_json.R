# Folder containing your images
photo_dir <- "./docs/photos"   # adjust if your photos folder is inside docs/

# Get all image files
imgs <- list.files(
  path = photo_dir,
  pattern = "\\.(jpg|jpeg|png|gif)$",
  ignore.case = TRUE
)

# Optional: sort alphabetically or manually
imgs <- sort(imgs)

# Export to JSON
json_file <- "./docs/photos.json"
jsonlite::write_json(imgs, path = json_file, pretty = TRUE, auto_unbox = TRUE)

cat("Generated", json_file, "with", length(imgs), "images.\n")