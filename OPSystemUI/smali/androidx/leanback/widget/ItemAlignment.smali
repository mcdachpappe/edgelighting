.class Landroidx/leanback/widget/ItemAlignment;
.super Ljava/lang/Object;
.source "ItemAlignment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/ItemAlignment$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

.field private mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

.field private mOrientation:I

.field private mSecondAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

.field public final vertical:Landroidx/leanback/widget/ItemAlignment$Axis;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/ItemAlignment;->mOrientation:I

    new-instance v1, Landroidx/leanback/widget/ItemAlignment$Axis;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/leanback/widget/ItemAlignment$Axis;-><init>(I)V

    iput-object v1, p0, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    new-instance v1, Landroidx/leanback/widget/ItemAlignment$Axis;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ItemAlignment$Axis;-><init>(I)V

    iput-object v1, p0, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    iget-object v0, p0, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    iget-object v0, p0, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    iput-object v0, p0, Landroidx/leanback/widget/ItemAlignment;->mSecondAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    return-void
.end method


# virtual methods
.method public final setOrientation(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ItemAlignment;->mOrientation:I

    iget p1, p0, Landroidx/leanback/widget/ItemAlignment;->mOrientation:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    iput-object p1, p0, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    iget-object p1, p0, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    iput-object p1, p0, Landroidx/leanback/widget/ItemAlignment;->mSecondAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    iput-object p1, p0, Landroidx/leanback/widget/ItemAlignment;->mMainAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    iget-object p1, p0, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    iput-object p1, p0, Landroidx/leanback/widget/ItemAlignment;->mSecondAxis:Landroidx/leanback/widget/ItemAlignment$Axis;

    :goto_0
    return-void
.end method
