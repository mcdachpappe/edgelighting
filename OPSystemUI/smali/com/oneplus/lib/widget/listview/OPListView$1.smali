.class Lcom/oneplus/lib/widget/listview/OPListView$1;
.super Ljava/lang/Object;
.source "OPListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/listview/OPListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/listview/OPListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/listview/OPListView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView$1;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/listview/OPListView$1;->this$0:Lcom/oneplus/lib/widget/listview/OPListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method
