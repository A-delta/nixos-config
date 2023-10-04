{
  pkgs,
  config,
  ...
}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    enableExtensionUpdateCheck = false;
    enableUpdateCheck = false;
    extensions = with pkgs.vscode-extensions;
      [
        arrterian.nix-env-selector
        jnoortheen.nix-ide
        ms-vscode.cpptools
        ms-dotnettools.csharp
        ms-python.python
        ms-vscode.cmake-tools
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "ada";
          publisher = "AdaCore";
          version = "23.0.21";
          sha256 = "4vEBF183X+w2zidSrnQlmUcDlXsUayhxCp1h+GikWIU=";
        }
      ];

    keybindings = [
      {
        key = "";
        command = "workbench.view.extensions";
      }

      {
        key = "ctrl+shift+x";
        command = "workbench.action.terminal.toggleTerminal";
      }
    ];

    userSettings = {
      cmake = {
        configureOnOpen = true;
      };
      editor = {
        formatOnSave = true;

        # Indent
        detectIndentation = false;
        indent_style = "space";
        indentSize = 4;
        insertSpaces = true;
        tabSize = 4;

        inlineSuggest.enabled = true;

        # Font
        fontLigatures = true;
        fontFamily = "Fira Code";
      };
      explorer = {
        confirmDragAndDrop = false;
      };
      files = {
        insertFinalNewLine = true;
        trimTrailingWhitespace = true;
      };
      git = {
        autofetch = true;
        confirmSync = false;
      };

      "window.autoDetectColorScheme" = false;
      "editor.tokenColorCustomizations" = {
        "comments" = "#${config.colorScheme.colors.base0E}";
      };

      workbench.colorCustomizations = {
        "foreground" = "#${config.colorScheme.colors.base05}";
        "focusBorder" = "#${config.colorScheme.colors.base03}";
        "selection.background" = "#${config.colorScheme.colors.base00}";
        "scrollbar.shadow" = "#00000000";
        "activityBar.foreground" = "#${config.colorScheme.colors.base05}";
        "activityBar.background" = "#${config.colorScheme.colors.base00}";
        "activityBar.inactiveForeground" = "#${config.colorScheme.colors.base06}";
        "activityBarBadge.foreground" = "#${config.colorScheme.colors.base05}";
        "activityBarBadge.background" = "#00000000";
        "activityBar.border" = "#00000000";
        "activityBar.activeBackground" = "#${config.colorScheme.colors.base02}";
        "sideBar.background" = "#${config.colorScheme.colors.base00}";
        "sideBar.foreground" = "#${config.colorScheme.colors.base05}";
        "sideBarSectionHeader.background" = "#${config.colorScheme.colors.base02}";
        "sideBarSectionHeader.foreground" = "#${config.colorScheme.colors.base05}";
        "sideBarSectionHeader.border" = "#00000000";
        "sideBarTitle.foreground" = "#${config.colorScheme.colors.base05}";
        "sideBar.border" = "#00000000";
        "list.inactiveSelectionBackground" = "#${config.colorScheme.colors.base02}";
        "list.inactiveSelectionForeground" = "#${config.colorScheme.colors.base05}";
        "list.hoverBackground" = "#${config.colorScheme.colors.base02}";
        "list.hoverForeground" = "#${config.colorScheme.colors.base05}";
        "list.activeSelectionBackground" = "#${config.colorScheme.colors.base02}";
        "list.activeSelectionForeground" = "#${config.colorScheme.colors.base05}";
        "tree.indentGuidesStroke" = "#${config.colorScheme.colors.base03}";
        "list.dropBackground" = "#${config.colorScheme.colors.base02}";
        "list.highlightForeground" = "#${config.colorScheme.colors.base0D}";
        "list.focusBackground" = "#${config.colorScheme.colors.base00}";
        "list.focusForeground" = "#${config.colorScheme.colors.base05}";
        "listFilterWidget.background" = "#${config.colorScheme.colors.base02}";
        "listFilterWidget.outline" = "#00000000";
        "listFilterWidget.noMatchesOutline" = "#${config.colorScheme.colors.base09}";
        "statusBar.foreground" = "#${config.colorScheme.colors.base05}";
        "statusBar.background" = "#${config.colorScheme.colors.base00}";
        "statusBarItem.hoverBackground" = "#${config.colorScheme.colors.base02}";
        "statusBar.border" = "#00000000";
        "statusBar.debuggingBackground" = "#${config.colorScheme.colors.base00}";
        "statusBar.debuggingForeground" = "#${config.colorScheme.colors.base05}";
        "statusBar.debuggingBorder" = "#00000000";
        "statusBar.noFolderBackground" = "#${config.colorScheme.colors.base03}";
        "statusBar.noFolderForeground" = "#${config.colorScheme.colors.base05}";
        "statusBar.noFolderBorder" = "#00000000";
        "statusBarItem.remoteBackground" = "#${config.colorScheme.colors.base00}";
        "statusBarItem.remoteForeground" = "#${config.colorScheme.colors.base05}";
        "titleBar.activeBackground" = "#${config.colorScheme.colors.base00}";
        "titleBar.activeForeground" = "#${config.colorScheme.colors.base05}";
        "titleBar.inactiveBackground" = "#${config.colorScheme.colors.base00}";
        "titleBar.inactiveForeground" = "#${config.colorScheme.colors.base05}";
        "titleBar.border" = "#00000000";
        "menubar.selectionForeground" = "#${config.colorScheme.colors.base05}";
        "menubar.selectionBackground" = "#${config.colorScheme.colors.base02}";
        "menubar.selectionBorder" = "#00000000";
        "menu.foreground" = "#${config.colorScheme.colors.base05}";
        "menu.background" = "#${config.colorScheme.colors.base02}";
        "menu.selectionForeground" = "#${config.colorScheme.colors.base05}";
        "menu.selectionBackground" = "#${config.colorScheme.colors.base00}";
        "menu.selectionBorder" = "#${config.colorScheme.colors.base03}";
        "menu.separatorBackground" = "#${config.colorScheme.colors.base00}";
        "menu.border" = "#${config.colorScheme.colors.base00}";
        "button.background" = "#${config.colorScheme.colors.base00}";
        "button.foreground" = "#${config.colorScheme.colors.base05}";
        "button.hoverBackground" = "#${config.colorScheme.colors.base02}";
        "button.secondaryForeground" = "#${config.colorScheme.colors.base05}";
        "button.secondaryBackground" = "#${config.colorScheme.colors.base00}";
        "button.secondaryHoverBackground" = "#${config.colorScheme.colors.base02}";
        "input.background" = "#${config.colorScheme.colors.base01}";
        "input.border" = "#${config.colorScheme.colors.base03}";
        "input.foreground" = "#${config.colorScheme.colors.base05}";
        "inputOption.activeBackground" = "#${config.colorScheme.colors.base00}";
        "inputOption.activeBorder" = "#${config.colorScheme.colors.base03}";
        "inputOption.activeForeground" = "#${config.colorScheme.colors.base05}";
        "input.placeholderForeground" = "#${config.colorScheme.colors.base05}";
        "textLink.foreground" = "#${config.colorScheme.colors.base0D}";
        "editor.background" = "#${config.colorScheme.colors.base01}";
        "editor.foreground" = "#${config.colorScheme.colors.base05}";
        "editorLineNumber.foreground" = "#${config.colorScheme.colors.base05}";
        "editorCursor.foreground" = "#${config.colorScheme.colors.base00}";
        "editorCursor.background" = "#${config.colorScheme.colors.base05}";
        "editor.selectionBackground" = "#${config.colorScheme.colors.base00}";
        "editor.inactiveSelectionBackground" = "#${config.colorScheme.colors.base00}";
        "editorWhitespace.foreground" = "#${config.colorScheme.colors.base03}";
        "editor.selectionHighlightBackground" = "#${config.colorScheme.colors.base02}";
        "editor.selectionHighlightBorder" = "#${config.colorScheme.colors.base03}";
        "editor.findMatchBackground" = "#${config.colorScheme.colors.base02}";
        "editor.findMatchBorder" = "#${config.colorScheme.colors.base03}";
        "editor.findMatchHighlightBackground" = "#${config.colorScheme.colors.base02}";
        "editor.findMatchHighlightBorder" = "#${config.colorScheme.colors.base03}";
        "editor.findRangeHighlightBackground" = "#${config.colorScheme.colors.base02}";
        "editor.findRangeHighlightBorder" = "#00000000";
        "editor.rangeHighlightBackground" = "#00000000";
        "editor.rangeHighlightBorder" = "#${config.colorScheme.colors.base03}";
        "editor.hoverHighlightBackground" = "#00000000";
        "editor.wordHighlightStrongBackground" = "#004972b8";
        "editor.wordHighlightBackground" = "#575757b8";
        "editor.lineHighlightBackground" = "#ffffff0A";
        "editor.lineHighlightBorder" = "#00000000";
        "editorLineNumber.activeForeground" = "#${config.colorScheme.colors.base03}";
        "editorLink.activeForeground" = "#${config.colorScheme.colors.base09}";
        "editorIndentGuide.background" = "#${config.colorScheme.colors.base03}";
        "editorIndentGuide.activeBackground" = "#${config.colorScheme.colors.base0B}";
        "editorRuler.foreground" = "#00000000";
        "editorBracketMatch.background" = "#00000000";
        "editorBracketMatch.border" = "#${config.colorScheme.colors.base0B}";
        "editor.foldBackground" = "#00000000";
        "editorOverviewRuler.background" = "#00000000";
        "editorOverviewRuler.border" = "#00000000";
        "editorError.foreground" = "#${config.colorScheme.colors.base09}";
        "editorError.background" = "#00000000";
        "editorError.border" = "#00000000";
        "editorWarning.foreground" = "#${config.colorScheme.colors.base0F}";
        "editorWarning.background" = "#00000000";
        "editorWarning.border" = "#00000000";
        "editorInfo.foreground" = "#${config.colorScheme.colors.base0D}";
        "editorInfo.background" = "#00000000";
        "editorInfo.border" = "#00000000";
        "editorGutter.background" = "#${config.colorScheme.colors.base01}";
        "editorGutter.modifiedBackground" = "#${config.colorScheme.colors.base0D}";
        "editorGutter.addedBackground" = "#${config.colorScheme.colors.base0D}";
        "editorGutter.deletedBackground" = "#${config.colorScheme.colors.base09}";
        "editorGutter.foldingControlForeground" = "#${config.colorScheme.colors.base0D}";
        "editorCodeLens.foreground" = "#${config.colorScheme.colors.base0D}";
        "editorGroup.border" = "#${config.colorScheme.colors.base03}";
        "diffEditor.insertedTextBackground" = "#9bb95533";
        "diffEditor.removedTextBackground" = "#ff000033";
        "diffEditor.border" = "#${config.colorScheme.colors.base03}";
        "panel.background" = "#${config.colorScheme.colors.base01}";
        "panel.border" = "#${config.colorScheme.colors.base03}";
        "panelTitle.activeBorder" = "#${config.colorScheme.colors.base03}";
        "panelTitle.activeForeground" = "#${config.colorScheme.colors.base05}";
        "panelTitle.inactiveForeground" = "#${config.colorScheme.colors.base05}";
        "badge.background" = "#00000000";
        "badge.foreground" = "#${config.colorScheme.colors.base05}";
        "terminal.foreground" = "#${config.colorScheme.colors.base05}";
        "terminal.selectionBackground" = "#46354a50";
        "terminalCursor.background" = "#${config.colorScheme.colors.base02}";
        "terminalCursor.foreground" = "#${config.colorScheme.colors.base05}";
        "terminal.border" = "#${config.colorScheme.colors.base03}";
        "terminal.ansiBlack" = "#${config.colorScheme.colors.base00}";
        "terminal.ansiBlue" = "#${config.colorScheme.colors.base0C}";
        "terminal.ansiBrightBlack" = "#${config.colorScheme.colors.base00}";
        "terminal.ansiBrightBlue" = "#${config.colorScheme.colors.base0C}";
        "terminal.ansiBrightCyan" = "#${config.colorScheme.colors.base0D}";
        "terminal.ansiBrightGreen" = "#${config.colorScheme.colors.base0E}";
        "terminal.ansiBrightMagenta" = "#${config.colorScheme.colors.base0B}";
        "terminal.ansiBrightRed" = "#${config.colorScheme.colors.base09}";
        "terminal.ansiBrightWhite" = "#${config.colorScheme.colors.base05}";
        "terminal.ansiBrightYellow" = "#${config.colorScheme.colors.base0F}";
        "terminal.ansiCyan" = "#${config.colorScheme.colors.base0D}";
        "terminal.ansiGreen" = "#${config.colorScheme.colors.base0E}";
        "terminal.ansiMagenta" = "#${config.colorScheme.colors.base0B}";
        "terminal.ansiRed" = "#${config.colorScheme.colors.base09}";
        "terminal.ansiWhite" = "#${config.colorScheme.colors.base05}";
        "terminal.ansiYellow" = "#${config.colorScheme.colors.base0F}";
        "breadcrumb.background" = "#${config.colorScheme.colors.base00}";
        "breadcrumb.foreground" = "#${config.colorScheme.colors.base05}";
        "breadcrumb.focusForeground" = "#${config.colorScheme.colors.base05}";
        "editorGroupHeader.border" = "#00000000";
        "editorGroupHeader.tabsBackground" = "#${config.colorScheme.colors.base00}";
        "editorGroupHeader.tabsBorder" = "#00000000";
        "tab.activeForeground" = "#${config.colorScheme.colors.base05}";
        "tab.border" = "#${config.colorScheme.colors.base03}";
        "tab.activeBackground" = "#${config.colorScheme.colors.base01}";
        "tab.activeBorder" = "#00000000";
        "tab.activeBorderTop" = "#00000000";
        "tab.inactiveBackground" = "#${config.colorScheme.colors.base00}";
        "tab.inactiveForeground" = "#ffffff80";
        "tab.hoverBackground" = "#${config.colorScheme.colors.base02}";
        "tab.hoverForeground" = "#${config.colorScheme.colors.base05}";
        "tab.hoverBorder" = "#00000000";
        "scrollbarSlider.background" = "#${config.colorScheme.colors.base02}";
        "scrollbarSlider.hoverBackground" = "#${config.colorScheme.colors.base02}";
        "scrollbarSlider.activeBackground" = "#${config.colorScheme.colors.base00}";
        "progressBar.background" = "#${config.colorScheme.colors.base03}";
        "widget.shadow" = "#0000005c";
        "editorWidget.foreground" = "#${config.colorScheme.colors.base05}";
        "editorWidget.background" = "#${config.colorScheme.colors.base01}";
        "editorWidget.resizeBorder" = "#${config.colorScheme.colors.base03}";
        "pickerGroup.border" = "#${config.colorScheme.colors.base03}";
        "pickerGroup.foreground" = "#${config.colorScheme.colors.base03}";
        "debugToolBar.background" = "#${config.colorScheme.colors.base00}";
        "debugToolBar.border" = "#${config.colorScheme.colors.base03}";
        "notifications.foreground" = "#${config.colorScheme.colors.base05}";
        "notifications.background" = "#${config.colorScheme.colors.base01}";
        "notificationToast.border" = "#${config.colorScheme.colors.base03}";
        "notificationsErrorIcon.foreground" = "#${config.colorScheme.colors.base09}";
        "notificationsWarningIcon.foreground" = "#${config.colorScheme.colors.base0F}";
        "notificationsInfoIcon.foreground" = "#${config.colorScheme.colors.base0D}";
        "notificationCenter.border" = "#${config.colorScheme.colors.base03}";
        "notificationCenterHeader.foreground" = "#${config.colorScheme.colors.base05}";
        "notificationCenterHeader.background" = "#${config.colorScheme.colors.base01}";
        "notifications.border" = "#${config.colorScheme.colors.base03}";
        "gitDecoration.addedResourceForeground" = "#${config.colorScheme.colors.base0E}";
        "gitDecoration.conflictingResourceForeground" = "#${config.colorScheme.colors.base0D}";
        "gitDecoration.deletedResourceForeground" = "#${config.colorScheme.colors.base09}";
        "gitDecoration.ignoredResourceForeground" = "#${config.colorScheme.colors.base07}";
        "gitDecoration.modifiedResourceForeground" = "#${config.colorScheme.colors.base0A}";
        "gitDecoration.stageDeletedResourceForeground" = "#${config.colorScheme.colors.base09}";
        "gitDecoration.stageModifiedResourceForeground" = "#${config.colorScheme.colors.base0A}";
        "gitDecoration.submoduleResourceForeground" = "#${config.colorScheme.colors.base0D}";
        "gitDecoration.untrackedResourceForeground" = "#${config.colorScheme.colors.base0E}";
        "editorMarkerNavigation.background" = "#${config.colorScheme.colors.base00}";
        "editorMarkerNavigationError.background" = "#${config.colorScheme.colors.base09}";
        "editorMarkerNavigationWarning.background" = "#cca700";
        "editorMarkerNavigationInfo.background" = "#${config.colorScheme.colors.base0D}";
        "merge.currentHeaderBackground" = "#367366";
        "merge.currentContentBackground" = "#27403B";
        "merge.incomingHeaderBackground" = "#395F8F";
        "merge.incomingContentBackground" = "#28384B";
        "merge.commonHeaderBackground" = "#383838";
        "merge.commonContentBackground" = "#282828";
        "editorSuggestWidget.background" = "#252526";
        "editorSuggestWidget.border" = "#454545";
        "editorSuggestWidget.foreground" = "#d4d4d4";
        "editorSuggestWidget.highlightForeground" = "#0097fb";
        "editorSuggestWidget.selectedBackground" = "#062f4a";
        "editorHoverWidget.foreground" = "#cccccc";
        "editorHoverWidget.background" = "#252526";
        "editorHoverWidget.border" = "#454545";
        "peekView.border" = "#00d7acc";
        "peekViewEditor.background" = "#001f33";
        "peekViewEditorGutter.background" = "#001f33";
        "peekViewEditor.matchHighlightBackground" = "#ff8f0099";
        "peekViewEditor.matchHighlightBorder" = "#ee931e";
        "peekViewResult.background" = "#252526";
        "peekViewResult.fileForeground" = "#ffffff";
        "peekViewResult.lineForeground" = "#bbbbbb";
        "peekViewResult.matchHighlightBackground" = "#ea5c004d";
        "peekViewResult.selectionBackground" = "#3399ff33";
        "peekViewResult.selectionForeground" = "#ffffff";
        "peekViewTitle.background" = "#1e1e1e";
        "peekViewTitleDescription.foreground" = "#ccccccb3";
        "peekViewTitleLabel.foreground" = "#ffffff";
        "icon.foreground" = "#${config.colorScheme.colors.base05}";
        "checkbox.background" = "#${config.colorScheme.colors.base01}";
        "checkbox.foreground" = "#${config.colorScheme.colors.base05}";
        "checkbox.border" = "#${config.colorScheme.colors.base03}";
        "dropdown.background" = "#${config.colorScheme.colors.base01}";
        "dropdown.foreground" = "#${config.colorScheme.colors.base05}";
        "dropdown.border" = "#${config.colorScheme.colors.base03}";
        "minimapGutter.addedBackground" = "#${config.colorScheme.colors.base0D}";
        "minimapGutter.modifiedBackground" = "#${config.colorScheme.colors.base0D}";
        "minimapGutter.deletedBackground" = "#${config.colorScheme.colors.base09}";
        "minimap.findMatchHighlight" = "#${config.colorScheme.colors.base02}";
        "minimap.selectionHighlight" = "#${config.colorScheme.colors.base00}";
        "minimap.errorHighlight" = "#${config.colorScheme.colors.base09}";
        "minimap.warningHighlight" = "#${config.colorScheme.colors.base0F}";
        "minimap.background" = "#${config.colorScheme.colors.base01}";
        "sideBar.dropBackground" = "#${config.colorScheme.colors.base02}";
        "editorGroup.emptyBackground" = "#${config.colorScheme.colors.base01}";
        "panelSection.border" = "#${config.colorScheme.colors.base03}";
        "statusBarItem.activeBackground" = "#FFFFFF25";
        "settings.headerForeground" = "#${config.colorScheme.colors.base05}";
        "settings.focusedRowBackground" = "#ffffff07";
        "walkThrough.embeddedEditorBackground" = "#00000050";
        "breadcrumb.activeSelectionForeground" = "#${config.colorScheme.colors.base05}";
        "editorGutter.commentRangeForeground" = "#${config.colorScheme.colors.base0D}";
        "debugExceptionWidget.background" = "#${config.colorScheme.colors.base00}";
        "debugExceptionWidget.border" = "#6c3cb2";
      };

      nix = {
        enableLanguageServer = true;
        serverPath = "${pkgs.nil}/bin/nil";
        formatterPath = "${pkgs.alejandra}/bin/alejandra";
        serverSettings = {
          nil = {
            formatting = {command = ["alejandra"];};
          };
        };
      };
    };
  };
}
