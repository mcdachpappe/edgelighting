.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->lambda$lgIjKBD4iaJhFeEZ5izPzOddhds(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;F)V

    return-void
.end method
