.class Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExploreByTouchNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/ExploreByTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/oneplus/lib/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/ExploreByTouchHelper;Lcom/oneplus/lib/widget/ExploreByTouchHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/oneplus/lib/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/oneplus/lib/widget/ExploreByTouchHelper;

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->access$100(Lcom/oneplus/lib/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/oneplus/lib/widget/ExploreByTouchHelper;

    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->access$200(Lcom/oneplus/lib/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
