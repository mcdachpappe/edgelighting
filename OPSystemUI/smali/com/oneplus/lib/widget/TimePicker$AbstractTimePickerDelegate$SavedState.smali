.class public Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentItemShowing:I

.field private final mHour:I

.field private final mIs24HourMode:Z

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/lib/widget/TimePicker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIZI)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    iput p3, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    iput-boolean p4, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    iput p5, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    return-void
.end method


# virtual methods
.method public getCurrentItemShowing()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    return p0
.end method

.method public getHour()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    return p0
.end method

.method public getMinute()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    return p0
.end method

.method public is24HourMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
