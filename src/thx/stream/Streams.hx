package thx.stream;

class Streams {
  public static function ofArray<T>(values : Array<T>) : Emitter<T> {
    return Emitter.create(function(stream) {
      for(value in values) {
        if(stream.canceled) return;
        stream.pulse(value);
      }
      stream.end();
    });
  }
}