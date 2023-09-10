from python import Python
from sys import argv

fn main():
  try:
    let builtins = Python.import_module("builtins")
    let path_to_file_to_read = argv().__getitem__(1)
    let file_to_read = builtins.open(path_to_file_to_read)
    let string_from_file = file_to_read.read()
    _ = file_to_read.close()
    let bytes_from_file = builtins.bytes(string_from_file, "utf-8")
    let brotli = Python.import_module("brotli")
    let compressed_bytes = brotli.compress(bytes_from_file)
    let raw_path_to_file_to_save = argv().__getitem__(2)
    let path_to_file_to_save: String = raw_path_to_file_to_save if builtins.bool(raw_path_to_file_to_save) else path_to_file_to_read
    let file_to_write = builtins.open(path_to_file_to_save.__add__(".br"), "wb")
    _ = file_to_write.write(bytes_from_file)
    _ = file_to_write.close()
  except:
    print("Something went wrong")
