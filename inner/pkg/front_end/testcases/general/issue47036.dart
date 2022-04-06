// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class Default {
  const Default(this.defaultValue);

  final Object? defaultValue;
}

class Settings {
  const factory Settings({
    @Default(Sidebar()) Sidebar sidebar,
  }) = _SSettings;
}

class Sidebar {
  const factory Sidebar() = _SSidebar;
}

abstract class _SSettings implements Settings {
  const factory _SSettings({Sidebar sidebar}) = _$_SSettings;
}

class _$_SSettings implements _SSettings {
  const _$_SSettings({this.sidebar = const Sidebar()});

  final Sidebar sidebar;
}

abstract class _SSidebar implements Sidebar {
  const factory _SSidebar() = _$_SSidebar;
}

class _$_SSidebar implements _SSidebar {
  const _$_SSidebar();
}

void main() {}
