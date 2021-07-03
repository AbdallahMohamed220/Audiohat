import 'package:flutter/material.dart';

class CustomecheckBox extends StatefulWidget {
  bool? value;

  CustomecheckBox({this.value});

  @override
  _CustomecheckBoxState createState() => _CustomecheckBoxState();
}

class _CustomecheckBoxState extends State<CustomecheckBox> {
  @override
  Widget build(BuildContext context) {
    return CustomCheckBox(
      value: widget.value!,
      shouldShowBorder: true,
      borderColor: Color(0xffBFBFBF),
      checkedFillColor:
          widget.value! ? Theme.of(context).accentColor : Colors.white,
      borderRadius: 5,
      borderWidth: 1,
      checkBoxSize: 20,
      checkedIcon: Icons.check,
      checkedIconColor: Colors.white,
      onChanged: (val) {
        print(val);
        setState(() {
          widget.value = val;
        });
      },
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  @required final bool value;
  @required final ValueChanged<bool> onChanged;
  final Color? checkedIconColor;
  final Color? checkedFillColor;
  final IconData? checkedIcon;
  final Color? uncheckedIconColor;
  final Color? uncheckedFillColor;
  final IconData? uncheckedIcon;
  final double? borderWidth;
  final double? checkBoxSize;
  @required final bool shouldShowBorder;
  final Color? borderColor;
  final double? borderRadius;

  const CustomCheckBox({
    required this.value,
    required this.onChanged,
    this.checkedIconColor = Colors.white,
    this.checkedFillColor = Colors.teal,
    this.checkedIcon = Icons.check,
    this.uncheckedIconColor = Colors.white,
    this.uncheckedFillColor = Colors.white,
    this.uncheckedIcon = Icons.close,
    required this.borderWidth,
    required this.checkBoxSize,
    this.shouldShowBorder = false,
    this.borderColor,
    this.borderRadius,
  });

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @required bool _checked = false;
  CheckStatus? _status;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didUpdateWidget(CustomCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _init();
  }

  void _init() {
    _checked = widget.value;
    if (_checked) {
      _status = CheckStatus.checked;
    } else {
      _status = CheckStatus.unchecked;
    }
  }

  Widget _buildIcon() {
    Color? fillColor;
    Color? iconColor;
    IconData? iconData;

    switch (_status) {
      case CheckStatus.checked:
        fillColor = widget.checkedFillColor!;
        iconColor = widget.checkedIconColor!;
        iconData = widget.checkedIcon!;
        break;
      case CheckStatus.unchecked:
        fillColor = widget.uncheckedFillColor!;
        iconColor = widget.uncheckedIconColor!;
        iconData = widget.uncheckedIcon!;
        break;
    }

    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius:
            BorderRadius.all(Radius.circular(widget.borderRadius ?? 6)),
        border: Border.all(
          color: widget.shouldShowBorder
              ? (widget.borderColor ?? Colors.teal.withOpacity(0.6))
              : (!widget.value
                  ? (widget.borderColor ?? Colors.teal.withOpacity(0.6))
                  : Colors.transparent),
          width: widget.shouldShowBorder ? widget.borderWidth ?? 2.0 : 1.0,
        ),
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: widget.checkBoxSize ?? 18,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _buildIcon(),
      onPressed: () => widget.onChanged(!_checked),
    );
  }
}

enum CheckStatus {
  checked,
  unchecked,
}
