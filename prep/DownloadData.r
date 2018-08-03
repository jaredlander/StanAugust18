root <- rprojroot::find_rstudio_root_file()
dataDir <- file.path(root, 'data')

# building_data.rds
download.file(
	'https://query.data.world/s/75uh3mxexj3t76sm4frsqq4m2wogi2',
	destfile=file.path(dataDir, 'building_data.rds'),
	mode='wb')

# movie_data.rds
download.file(
	'https://query.data.world/s/k4pxwzi6eruaozdeau3cz4mp3lly5l',
	destfile=file.path(dataDir, 'movie_data.rds'),
	mode='wb')

