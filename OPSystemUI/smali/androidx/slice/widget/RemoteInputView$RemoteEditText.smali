.class public Landroidx/slice/widget/RemoteInputView$RemoteEditText;
.super Landroid/widget/EditText;
.source "RemoteInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/RemoteInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteEditText"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field mRemoteInputView:Landroidx/slice/widget/RemoteInputView;

.field mShowImeOnInputConnection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private defocusIfNeeded(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mRemoteInputView:Landroidx/slice/widget/RemoteInputView;

    if-nez p1, :cond_3

    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->isTemporarilyDetachedCompat()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mRemoteInputView:Landroidx/slice/widget/RemoteInputView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/RemoteInputView;->onDefocus()V

    :cond_1
    iput-boolean p1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->isTemporarilyDetachedCompat()Z

    return-void
.end method

.method private isTemporarilyDetachedCompat()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->isTemporarilyDetached()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearComposingText()V

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;-><init>(Landroidx/slice/widget/RemoteInputView$RemoteEditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method setInnerFocusable(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
