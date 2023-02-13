import 'package:flutter/material.dart';

class OwGrid extends StatefulWidget {
  final List<Widget>? children;
  final EdgeInsetsGeometry? padding;
  final double? rowHeight;
  final double spacing;
  final double runSpacing;
  final int? horizontalQuantity;
  final List<double>? numbersInRowAccordingToWidgth;
  final bool centeredChildren;
  final int? maxNumberOfRows;
  final List<int>? flexColumns;
  final List<double>? widthColumns;
  final List<double>? heightRows;
  final BoxConstraints? constraints;
  final List<List<int>>? layout;
  final bool fillLastRow;
  final bool expandLastColumn;
  final Widget? horizontalSeparatorWidget;
  final Widget? verticalSeparatorWidget;

  final Widget Function(BuildContext context, int index)? itemBuilder;
  final int? itemCount;

  final ScrollController? controller;
  final int? maxLength;
  final Widget? loadingWidget;
  final Future<bool> Function()? loadMore;
  final ScrollPhysics? physics;
  final bool? loadingAndTryWidgetsAboveBottomWidget;
  final bool? useTryAgainWidget;
  final double? loadMoreOffsetFromBottom;
  
  const OwGrid({
    Key? key,
    required this.children,
    this.padding,
    this.constraints,
    this.rowHeight,
    this.spacing = 10,
    this.runSpacing = 10,
    this.horizontalQuantity,
    this.numbersInRowAccordingToWidgth,
    this.centeredChildren = false,
    this.maxNumberOfRows,
    this.flexColumns,
    this.widthColumns,
    this.heightRows,
    this.layout,
    this.fillLastRow = false,
    this.expandLastColumn = true,
    this.horizontalSeparatorWidget,
    this.verticalSeparatorWidget,
  }): controller = null,
      maxLength = null,
      loadingWidget = null,
      loadMore = null,
      physics = null,
      useTryAgainWidget = null,
      itemBuilder = null,
      itemCount = null,
      loadingAndTryWidgetsAboveBottomWidget = null,
      loadMoreOffsetFromBottom = null,
      super(key: key);

  const OwGrid.builder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.padding,
    this.constraints,
    this.rowHeight,
    this.spacing = 10,
    this.runSpacing = 10,
    this.horizontalQuantity,
    this.numbersInRowAccordingToWidgth,
    this.centeredChildren = false,
    this.maxNumberOfRows,
    this.flexColumns,
    this.widthColumns, // * Verificar o que fazer quando colocar um némero maior que o de numbersInRowAccordingToWidgth
    this.heightRows,
    this.layout,
    this.fillLastRow = false,
    this.expandLastColumn = true,
    this.horizontalSeparatorWidget,
    this.verticalSeparatorWidget,
  }): children = null,
      controller = null,
      maxLength = null,
      loadingWidget = null,
      loadMore = null,
      physics = null,
      useTryAgainWidget = null,
      loadingAndTryWidgetsAboveBottomWidget = null,
      loadMoreOffsetFromBottom = null,
      super(key: key);

  @override
  State<OwGrid> createState() => _OwGridState();
}

class _OwGridState extends State<OwGrid> {

  late List<Widget> _children;
  ScrollController? _scrollController;

  @override
  void initState() { 
    super.initState();
    _scrollController = widget.controller ?? ScrollController();
    _scrollController?.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    _children = _defineChildren(context);
    return _container(context);
  }

  Widget _container(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: widget.padding,
      constraints: widget.constraints,
      width: MediaQuery.of(context).size.width,
      child: _gridView(context),
    );
  }

  Widget _gridView(BuildContext context, [bool addTopAndBottomWidget = false]) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      key: widget.key,
      children: _columnWidgets(context, addTopAndBottomWidget),
    );
  }

  List<Widget> _defineChildren(BuildContext context) {
    return widget.children ?? List.generate(
      (widget.maxLength == null) || (widget.itemCount ?? 0) < (widget.maxLength ?? 0) 
        ? (widget.itemCount ?? 0) 
        : (widget.maxLength ?? 0), 
      (index) => widget.itemBuilder!(context, index),
    ).toList();
  }

  List<Widget> _columnWidgets(BuildContext context, [bool addTopAndBottomWidget = false]) {
    double totalWidth = MediaQuery.of(context).size.width; // LayoutBuilder
    int caseTemp = 0;
    if(widget.numbersInRowAccordingToWidgth != null) {
      int i = 0;
      for(; i < widget.numbersInRowAccordingToWidgth!.length; i++) {
        if(totalWidth <= widget.numbersInRowAccordingToWidgth![i]) {
          break;
        }
      }
      caseTemp = i;
    }
    List<int>? alignment;
    if(widget.layout != null && widget.layout!.length > caseTemp) {
      alignment = widget.layout![caseTemp];
    }

    List<Widget> rowWidgets(int index, int rowIndex) {
      int? quantityInRow;
      if(alignment != null && alignment.length > rowIndex) {
        quantityInRow = alignment[rowIndex];
      }
      quantityInRow = quantityInRow ?? widget.horizontalQuantity ?? caseTemp + 1;
      if(widget.fillLastRow && quantityInRow > _children.length - index) {
        quantityInRow = _children.length - index;
      }

      double? rowHeight;
      if(widget.heightRows != null && widget.heightRows!.length > rowIndex) {
        rowHeight = widget.heightRows![rowIndex];
      }
      rowHeight = rowHeight ?? widget.rowHeight;

      bool hasFlex = false;
      if(quantityInRow > 1) {
        for(int i = 0; i < quantityInRow; i++) {
          int childIndex = index + i;
          if(_children.length > childIndex) {
            if(widget.widthColumns == null || (widget.widthColumns?.length ?? 0) <= i || widget.widthColumns?[i] == null) {
              hasFlex = true;
            }
          }
        }
      }

      List<Widget> widgetsInRow = [];
      int column = 0;
      for(int i = index; column < quantityInRow; i++) {
        if(widget.fillLastRow && i >= _children.length) {
          break;
        }

        Widget? child;
        if(i >= _children.length) {
          child = null;
        } else {
          child = _children[i];
        }

        if(widgetsInRow.isNotEmpty) {
          widgetsInRow.add(
            SizedBox(
              width: widget.spacing,
              height: rowHeight, // + widget.runSpacing to use a divider (needs Stack)
              child: widget.horizontalSeparatorWidget,
            ),
          );
        }

        double? widthChild;
        if(
          hasFlex || 
          (!hasFlex && column + 1 < quantityInRow) || 
          (!widget.expandLastColumn && column + 1 == quantityInRow)
        ) {
          if(widget.widthColumns != null && widget.widthColumns!.length > column && widget.widthColumns?[column] != null) {
            widthChild = widget.widthColumns![column];
          }
        }

        int? flex;
        if(widthChild == null) {
          if(widget.flexColumns != null && widget.flexColumns!.length > column) {
            flex = widget.flexColumns![column];
          }
          flex = flex ?? 1;
        }

        if(flex != null) {
          child = Expanded(
            flex: flex,
            child: SizedBox(
              height: rowHeight,
              child: child,
            ),
          );
        } else {
          child = SizedBox(
            width: widthChild,
            height: rowHeight,
            child: child,
          );
        }

        widgetsInRow.add(child);
        column++;
      }

      return widgetsInRow;
    }

    List<Widget> columnChildren = [];

    int rowIndex = 0;
    for(int i = 0; i < _children.length && (widget.maxNumberOfRows == null || rowIndex < (widget.maxNumberOfRows ?? 0));) {
      if(columnChildren.isNotEmpty) {
        columnChildren.add(
          SizedBox(
            height: widget.runSpacing,
            child: widget.verticalSeparatorWidget,
          ),
        );
      }

      // caso queira adicionar algo no inicio
      // if(_columnChildren.isEmpty && addTopAndBottomWidget && widget.topWidget != null) {
      //   _columnChildren.add(widget.topWidget);
      // }

      List<Widget> rowChildren = rowWidgets(i, rowIndex);
      columnChildren.add(
        IntrinsicHeight(child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: rowChildren
        )),
      );

      i += (rowChildren.length / 2).ceil();
      rowIndex++;
    }

    // caso queira adicionar algo no final
    // if(addTopAndBottomWidget && widget.bottomWidget != null) {
    //   _columnChildren.add(widget.bottomWidget);
    // }

    return columnChildren;
  }
}