.class Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private mLayoutLeft:I

.field private mLayoutTop:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    return-void
.end method

.method private updateOffsets()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetTop:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget p0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    sub-int/2addr v2, p0

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method


# virtual methods
.method public getLayoutTop()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutTop:I

    return p0
.end method

.method public getTopAndBottomOffset()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetTop:I

    return p0
.end method

.method public onViewLayout()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutTop:I

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->updateOffsets()V

    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->updateOffsets()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetTop:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->mOffsetTop:I

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->updateOffsets()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
