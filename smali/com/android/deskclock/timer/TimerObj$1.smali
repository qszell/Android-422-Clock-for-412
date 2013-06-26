.class final Lcom/android/deskclock/timer/TimerObj$1;
.super Ljava/lang/Object;
.source "TimerObj.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/deskclock/timer/TimerObj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/deskclock/timer/TimerObj;
    .locals 1
    .parameter "p"

    .prologue
    .line 68
    new-instance v0, Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {v0, p1}, Lcom/android/deskclock/timer/TimerObj;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/deskclock/timer/TimerObj$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/deskclock/timer/TimerObj;
    .locals 1
    .parameter "size"

    .prologue
    .line 73
    new-array v0, p1, [Lcom/android/deskclock/timer/TimerObj;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/deskclock/timer/TimerObj$1;->newArray(I)[Lcom/android/deskclock/timer/TimerObj;

    move-result-object v0

    return-object v0
.end method
