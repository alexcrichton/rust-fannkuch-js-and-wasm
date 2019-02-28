fn main() {
    println!("cargo:rustc-link-lib=rust_fannkuch_js_and_wasm");
    println!("cargo:rustc-link-search=../target/release");
}
