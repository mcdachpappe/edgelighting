.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$CaptionsToggleImageButton$G1CrD-3iT19JR_3d-rnIgC4b3Mg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/CaptionsToggleImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$CaptionsToggleImageButton$G1CrD-3iT19JR_3d-rnIgC4b3Mg;->f$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$CaptionsToggleImageButton$G1CrD-3iT19JR_3d-rnIgC4b3Mg;->f$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->lambda$setCaptionsEnabled$0$CaptionsToggleImageButton(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z

    move-result p0

    return p0
.end method
