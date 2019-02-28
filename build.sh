set -ex

cargo build --release --target wasm32-unknown-unknown
cp target/wasm32-unknown-unknown/release/rust_fannkuch_js_and_wasm.wasm rust.wasm
wasm-strip rust.wasm
wasm-opt -O3 rust.wasm -o out.wasm
cp out.wasm rust.wasm
rm out.wasm
python -m SimpleHTTPServer
