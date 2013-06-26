.class Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$3;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/deskclock/timer/TimerObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$3;->this$1:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/timer/TimerObj;Lcom/android/deskclock/timer/TimerObj;)I
    .locals 8
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$3;->getSection(Lcom/android/deskclock/timer/TimerObj;)I

    move-result v0

    .line 300
    .local v0, section1:I
    invoke-virtual {p0, p2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$3;->getSection(Lcom/android/deskclock/timer/TimerObj;)I

    move-result v1

    .line 301
    .local v1, section2:I
    if-eq v0, v1, :cond_2

    .line 302
    if-ge v0, v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 302
    goto :goto_0

    .line 303
    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_4

    .line 304
    :cond_3
    iget-wide v4, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    iget-wide v6, p2, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 306
    :cond_4
    iget-wide v4, p1, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    iget-wide v6, p2, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 280
    check-cast p1, Lcom/android/deskclock/timer/TimerObj;

    .end local p1
    check-cast p2, Lcom/android/deskclock/timer/TimerObj;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$3;->compare(Lcom/android/deskclock/timer/TimerObj;Lcom/android/deskclock/timer/TimerObj;)I

    move-result v0

    return v0
.end method

.method protected getSection(Lcom/android/deskclock/timer/TimerObj;)I
    .locals 1
    .parameter "timerObj"

    .prologue
    .line 286
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 293
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 288
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
