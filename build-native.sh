cargo build --release

LD_LIBRARY_PATH=`pwd`/target/release \
DYLD_LIBRARY_PATH=`pwd`/target/release \
  cargo run --release --manifest-path native/Cargo.toml
