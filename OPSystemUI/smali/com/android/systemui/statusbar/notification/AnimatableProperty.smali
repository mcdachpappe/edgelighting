.class public abstract Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.super Ljava/lang/Object;
.source "AnimatableProperty.java"


# static fields
.field public static final X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field public static final Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    sget v1, Lcom/android/systemui/R$id;->x_animator_tag:I

    sget v2, Lcom/android/systemui/R$id;->x_animator_tag_start_value:I

    sget v3, Lcom/android/systemui/R$id;->x_animator_tag_end_value:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    sget v1, Lcom/android/systemui/R$id;->y_animator_tag:I

    sget v2, Lcom/android/systemui/R$id;->y_animator_tag_start_value:I

    sget v3, Lcom/android/systemui/R$id;->y_animator_tag_end_value:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;III)",
            "Lcom/android/systemui/statusbar/notification/AnimatableProperty;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;

    invoke-direct {v0, p2, p3, p1, p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;-><init>(IIILandroid/util/Property;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/Float;",
            ">;III)",
            "Lcom/android/systemui/statusbar/notification/AnimatableProperty;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    new-instance p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;

    invoke-direct {p0, p4, p5, p3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;-><init>(IIILandroid/util/Property;)V

    return-object p0
.end method


# virtual methods
.method public abstract getAnimationEndTag()I
.end method

.method public abstract getAnimationStartTag()I
.end method

.method public abstract getAnimatorTag()I
.end method

.method public abstract getProperty()Landroid/util/Property;
.end method
