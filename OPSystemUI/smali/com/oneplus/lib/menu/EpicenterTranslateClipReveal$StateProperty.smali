.class Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;
.super Landroid/util/Property;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTargetDimension:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempState:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;


# direct methods
.method public constructor <init>(C)V
    .locals 3

    const-class v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    invoke-direct {v0}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iput p1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget p0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    const/16 v2, 0x78

    if-ne p0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    iput p0, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v2, p1

    add-int/2addr p0, v2

    iput p0, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget p0, v0, Landroid/graphics/Rect;->right:I

    float-to-int p1, p1

    add-int/2addr p0, p1

    iput p0, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    iput p0, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    iget p0, v0, Landroid/graphics/Rect;->top:I

    iget p1, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v2, p1

    add-int/2addr p0, v2

    iput p0, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    float-to-int p1, p1

    add-int/2addr p0, p1

    iput p0, v1, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    :goto_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->get(Landroid/view/View;)Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    move-result-object p0

    return-object p0
.end method

.method public set(Landroid/view/View;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x78

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne v1, v2, :cond_0

    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v4, v3

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v4, v3

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->upper:I

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_1
    iget p0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne p0, v2, :cond_2

    iget p0, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_2
    iget p0, p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;->set(Landroid/view/View;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;)V

    return-void
.end method
