.class public Lcom/oneplus/lib/design/widget/OPCheckableImageButton;
.super Landroid/widget/ImageButton;
.source "OPCheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final DRAWABLE_STATE_CHECKED:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton$1;-><init>(Lcom/oneplus/lib/design/widget/OPCheckableImageButton;)V

    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->mChecked:Z

    return p0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->mChecked:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    array-length v0, v0

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p0

    sget-object p1, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    invoke-static {p0, p1}, Landroid/widget/ImageButton;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->mChecked:Z

    invoke-virtual {p0}, Landroid/widget/ImageButton;->refreshDrawableState()V

    const/16 p1, 0x800

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setChecked(Z)V

    return-void
.end method
