.class Lcom/android/systemui/statusbar/notification/stack/ViewState$2;
.super Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/ViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationEndTag()I
    .locals 0

    sget p0, Lcom/android/systemui/R$id;->scale_x_animator_end_value_tag:I

    return p0
.end method

.method public getAnimationStartTag()I
    .locals 0

    sget p0, Lcom/android/systemui/R$id;->scale_x_animator_start_value_tag:I

    return p0
.end method

.method public getAnimatorTag()I
    .locals 0

    sget p0, Lcom/android/systemui/R$id;->scale_x_animator_tag:I

    return p0
.end method

.method public getProperty()Landroid/util/Property;
    .locals 0

    sget-object p0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    return-object p0
.end method
