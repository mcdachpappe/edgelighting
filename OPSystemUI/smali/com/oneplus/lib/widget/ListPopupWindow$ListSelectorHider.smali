.class Lcom/oneplus/lib/widget/ListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ListSelectorHider;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/ListPopupWindow$ListSelectorHider;->this$0:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->clearListSelection()V

    return-void
.end method
