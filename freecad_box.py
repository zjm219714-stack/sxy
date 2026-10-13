"""
FreeCAD 脚本 - 创建 160mm × 120mm × 3mm 长方体模型
使用方法：
  1. 打开 FreeCAD
  2. 菜单 Macro → Macros... → 选择此文件 → Execute
  3. 或在 FreeCAD Python 控制台粘贴以下代码运行
"""

import FreeCAD as App
import Part
import Sketcher
import Mesh

# ============================================================
# 设置文档
# ============================================================
doc_name = "Box_160x120x3"
doc = App.newDocument(doc_name)

# ============================================================
# Part 工作台方式 — 直接生成长方体（最简单）
# ============================================================
box = doc.addObject("Part::Box", "Box_160x120x3")

# 设置尺寸（单位：mm）
box.Length = 160   # X 轴（长）
box.Width  = 120   # Y 轴（宽）
box.Height = 3     # Z 轴（高）

# 设置位置（原点居中放置）
box.Placement.Base = App.Vector(-80, -60, 0)

# ============================================================
# 外观设置（可选）
# ============================================================
# 设置颜色 — RGB 值 0~1
box.ViewObject.ShapeColor = (0.6, 0.8, 1.0)  # 浅蓝色
box.ViewObject.Transparency = 0

# ============================================================
# 重新计算文档
# ============================================================
doc.recompute()

# ============================================================
# 调整视图
# ============================================================
App.Gui.SendMsgToActiveView("ViewFit")
App.Gui.activeDocument().activeView().viewAxonometric()

# 保存文档
save_path = App.getUserAppDataDir() + "/Box_160x120x3.FCStd"
doc.saveAs(save_path)

print(f"✅ 长方体模型已创建：160mm × 120mm × 3mm")
print(f"📁 已保存至：{save_path}")
print(f"📦 对象名称：{box.Name}")
print(f"📐 体积：{box.Shape.Volume:.2f} mm³")
print(f"📏 表面积：{box.Shape.Area:.2f} mm²")
