.class Lcom/oneplus/lib/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$000(Lcom/oneplus/lib/widget/NumberPicker;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/oneplus/commonctrl/R$id;->increment:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/NumberPicker$1;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    :goto_0
    return-void
.end method
