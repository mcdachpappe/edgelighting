.class Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;
.super Ljava/lang/Object;
.source "OPTextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->access$000(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
