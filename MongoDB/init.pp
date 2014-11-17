include mongodb

file { "/data":
	ensure => "directory",
} ->
file { "/data/db":
	ensure => "directory",
}
