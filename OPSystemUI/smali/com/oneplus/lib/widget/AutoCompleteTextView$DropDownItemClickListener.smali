.class Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/oneplus/lib/widget/AutoCompleteTextView;

    invoke-static {p0, p2, p3, p4, p5}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->access$500(Lcom/oneplus/lib/widget/AutoCompleteTextView;Landroid/view/View;IJ)V

    return-void
.end method
