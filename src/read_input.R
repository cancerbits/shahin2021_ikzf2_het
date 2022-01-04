## ---- read_metadata
clindata <- read_csv(file.path(metadata_dir,"metadata_ikzf2.csv"))
## ---- find_input_path
sample_path <- dir_ls(path=data_dir,
                      recurs=TRUE,
                      type ="directory",
                      glob = "*/COUNT/*") %>%
  as.character() %>% 
  setNames(., basename(.) %>% str_replace("_","-"))
## ---- read_10x
sample_expr <- Read10X(sample_path)
seurat_obj <- CreateSeuratObject(counts = sample_expr,project = project_name)
