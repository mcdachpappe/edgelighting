.class final Lcom/oneplus/support/core/fragment/app/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:[Lcom/oneplus/support/core/fragment/app/FragmentState;

.field mAdded:[I

.field mBackStack:[Lcom/oneplus/support/core/fragment/app/BackStackState;

.field mNextFragmentIndex:I

.field mPrimaryNavActiveIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState$1;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerState$1;-><init>()V

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    sget-object v0, Lcom/oneplus/support/core/fragment/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/support/core/fragment/app/FragmentState;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mActive:[Lcom/oneplus/support/core/fragment/app/FragmentState;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mAdded:[I

    sget-object v0, Lcom/oneplus/support/core/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/support/core/fragment/app/BackStackState;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mBackStack:[Lcom/oneplus/support/core/fragment/app/BackStackState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mActive:[Lcom/oneplus/support/core/fragment/app/FragmentState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mAdded:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mBackStack:[Lcom/oneplus/support/core/fragment/app/BackStackState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
