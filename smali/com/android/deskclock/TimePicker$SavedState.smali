.class Lcom/android/deskclock/TimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/deskclock/TimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAmPmState:I

.field mInput:[I

.field mInputPointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 547
    new-instance v0, Lcom/android/deskclock/TimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/android/deskclock/TimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/TimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 533
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/TimePicker$SavedState;->mInputPointer:I

    .line 535
    iget-object v0, p0, Lcom/android/deskclock/TimePicker$SavedState;->mInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/TimePicker$SavedState;->mAmPmState:I

    .line 537
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/deskclock/TimePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/android/deskclock/TimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 530
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 541
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 542
    iget v0, p0, Lcom/android/deskclock/TimePicker$SavedState;->mInputPointer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-object v0, p0, Lcom/android/deskclock/TimePicker$SavedState;->mInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 544
    iget v0, p0, Lcom/android/deskclock/TimePicker$SavedState;->mAmPmState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    return-void
.end method
