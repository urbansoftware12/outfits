import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets_book/widgets_book.dart';

class CameraMultipleImagesCubitState {
  CameraMultipleImagesCubitState({
    this.images = const [],
    this.isLoading = false,
  });

  CameraMultipleImagesCubitState copyWith({
    List<File?>? images,
    bool? isLoading,
  }) =>
      CameraMultipleImagesCubitState(
        images: images ?? this.images,
        isLoading: isLoading ?? this.isLoading,
      );

  final bool isLoading;
  final List<File?> images;
}

class CameraMultiImagesCubit extends Cubit<CameraMultipleImagesCubitState> {
  CameraMultiImagesCubit() : super(CameraMultipleImagesCubitState());
  File? image;
  final _picker = ImagePicker();
  final _toast = Toasts();

  Future<void> getImages(BuildContext context) async {
    try {
      emit(state.copyWith(isLoading: true));
      var tempImages = <File?>[];
      final pickedImages = await _picker.pickMultiImage(
        imageQuality: 40,
      );
      // Limit user to choose only 5 images or less than 5 images.
      if (pickedImages.length <= 5) {
        pickedImages.forEach((pickedImage) {
          tempImages.add(File(pickedImage.path));
        });

        emit(
          state.copyWith(
            images: tempImages.toList(),
            isLoading: false,
          ),
        );
      } else {
        // if user chooses more than 5 image showing toast message to pick again
        // ignore: use_build_context_synchronously
        _toast.showToast(
          context,
          type: AlertType.Error,
          title: 'Error',
          description: 'Please pick 5 images or less.',
        );
      }
    } on PlatformException catch (e) {
      _toast.showToast(context,
          type: AlertType.Info, title: 'Info', description: '${e.message}');
      if (e.code == 'camera_access_denied') {
        debugPrint('I am not allowed to take photos');
        _toast.showToast(
          context,
          type: AlertType.Info,
          title: 'Info',
          description: 'Please allow the app to pick images from gallery by'
              ' allowing camera permission',
        );
      }
    } finally {
      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    }
  }

  Future<void> addNewImage(BuildContext context) async {
    var stateImages = state.images;
    if (stateImages.length >= 5) {
      _toast.showToast(
        context,
        type: AlertType.Error,
        title: 'Error',
        description: 'You have already selected 5 images.',
      );
    } else {
      final pickedImage = await _picker.pickImage(
        imageQuality: 40,
        source: ImageSource.gallery,
      );
      if (pickedImage != null) {
        stateImages.insert(1, File(pickedImage.path));
        emit(
          CameraMultipleImagesCubitState(
            images: stateImages.toList(),
          ),
        );
      }
    }
  }

  void reset() {
    emit(CameraMultipleImagesCubitState());
  }
}
