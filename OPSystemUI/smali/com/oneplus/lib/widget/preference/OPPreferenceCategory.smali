.class public Lcom/oneplus/lib/widget/preference/OPPreferenceCategory;
.super Lcom/oneplus/lib/preference/PreferenceCategory;
.source "OPPreferenceCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceCategoryStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/preference/OPPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_Preference_Material_Category:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/preference/OPPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method
