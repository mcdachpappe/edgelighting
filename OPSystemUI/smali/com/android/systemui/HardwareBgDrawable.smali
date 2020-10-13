.class public Lcom/android/systemui/HardwareBgDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "HardwareBgDrawable.java"


# instance fields
.field private final mLayers:[Landroid/graphics/drawable/Drawable;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPoint:I

.field private mRotatedBackground:Z

.field private final mRoundTop:Z


# direct methods
.method public constructor <init>(ZZLandroid/content/Context;)V
    .locals 0

    invoke-static {p3, p1, p2}, Lcom/android/systemui/HardwareBgDrawable;->getLayers(Landroid/content/Context;ZZ)[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/HardwareBgDrawable;-><init>(Z[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Z[Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPaint:Landroid/graphics/Paint;

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/HardwareBgDrawable;->mRoundTop:Z

    iput-object p2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need 2 layers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getLayers(Landroid/content/Context;ZZ)[Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p2, :cond_0

    sget v0, Lcom/android/systemui/R$drawable;->rounded_bg_full:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->rounded_bg:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    new-array p1, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v3

    goto :goto_2

    :cond_1
    new-array p1, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p1, v1

    if-eqz p2, :cond_2

    sget p2, Lcom/android/systemui/R$drawable;->rounded_full_bg_bottom:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/android/systemui/R$drawable;->rounded_bg_bottom:I

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v3

    :goto_2
    aget-object p2, p1, v3

    const v0, 0x1010433

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPoint:I

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mRotatedBackground:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/systemui/HardwareBgDrawable;->mPoint:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_0

    move v2, v3

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/HardwareBgDrawable;->mRoundTop:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v5, v6, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5, v2, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mRoundTop:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, v1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, v4

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, v1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public getCutPoint()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPoint:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCutPoint(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/HardwareBgDrawable;->mPoint:I

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRotatedBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/HardwareBgDrawable;->mRotatedBackground:Z

    return-void
.end method
