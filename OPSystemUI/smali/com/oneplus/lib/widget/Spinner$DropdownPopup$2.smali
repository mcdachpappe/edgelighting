.class Lcom/oneplus/lib/widget/Spinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/Spinner$DropdownPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$2;->this$1:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$2;->this$1:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    iget-object v1, v0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->this$0:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$2;->this$1:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$2;->this$1:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->computeContentWidth()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/Spinner$DropdownPopup$2;->this$1:Lcom/oneplus/lib/widget/Spinner$DropdownPopup;

    invoke-static {p0}, Lcom/oneplus/lib/widget/Spinner$DropdownPopup;->access$401(Lcom/oneplus/lib/widget/Spinner$DropdownPopup;)V

    :goto_0
    return-void
.end method
