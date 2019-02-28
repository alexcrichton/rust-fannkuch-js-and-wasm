use std::time::Instant;

extern {
    fn run_fannkuch(n: i32);
}

fn main() {
    let start = Instant::now();
    unsafe { run_fannkuch(11); }
    println!("{:?}", start.elapsed());
}
