import 'package:dartz/dartz.dart';
import 'package:netflix_sample/domain/core/failuers/main_failuer.dart';
import 'package:netflix_sample/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo{
  Future<Either<MainFailure,List<Downloads>>> getDownloadsImages();

}