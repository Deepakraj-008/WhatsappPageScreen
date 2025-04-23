import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Global ThemeMode provider
final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);
