.class public Lcom/android/deskclock/stopwatch/StopwatchFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    }
.end annotation


# instance fields
.field mAccumulatedTime:J

.field private mCenterButton:Landroid/widget/TextView;

.field mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

.field private mLapsList:Landroid/widget/ListView;

.field private mLeftButton:Landroid/widget/ImageButton;

.field private mShareButton:Landroid/widget/ImageButton;

.field private mSharePopup:Landroid/widget/ListPopupWindow;

.field mStartTime:J

.field mState:I

.field private mTime:Lcom/android/deskclock/CircleTimerView;

.field private mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

.field mTimeUpdateThread:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 225
    invoke-direct {p0}, Lcom/android/deskclock/DeskClockFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 59
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    .line 60
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    .line 663
    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$6;

    invoke-direct {v0, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$6;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateThread:Ljava/lang/Runnable;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->addLapTime(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doLap()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/timer/CountingTimerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/deskclock/stopwatch/StopwatchFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateCurrentLap(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doReset()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showSharePopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->rightButtonAction()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/CircleTimerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 811
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 814
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "StopwatchFragment"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 816
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 818
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 819
    return-void
.end method

.method private addLapTime(J)V
    .locals 13
    .parameter "time"

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v12

    .line 613
    .local v12, size:I
    iget-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    add-long v2, v4, v6

    .line 614
    .local v2, curTime:J
    if-nez v12, :cond_1

    .line 616
    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V

    .line 617
    .local v0, firstLap:Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->addLap(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V

    .line 618
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    new-instance v4, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    const-wide/16 v6, 0x0

    move-object v5, p0

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->addLap(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V

    .line 619
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/CircleTimerView;->setIntervalTime(J)V

    .line 620
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateTimeFormats(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)Z

    .line 630
    .end local v0           #firstLap:Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->notifyDataSetChanged()V

    .line 632
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1}, Lcom/android/deskclock/CircleTimerView;->stopIntervalAnimation()V

    .line 633
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->reachedMaxLaps()Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1}, Lcom/android/deskclock/CircleTimerView;->startIntervalAnimation()V

    .line 636
    :cond_0
    return-void

    .line 622
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iget-wide v4, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    sub-long v10, v2, v4

    .line 623
    .local v10, lapTime:J
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iput-wide v10, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    .line 624
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iput-wide v2, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    .line 625
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    new-instance v4, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->addLap(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V

    .line 626
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1, v10, v11}, Lcom/android/deskclock/CircleTimerView;->setMarkerTime(J)V

    .line 627
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    #calls: Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V
    invoke-static {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->access$800(Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;)V

    goto :goto_0
.end method

.method private doLap()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showLaps()V

    .line 413
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 414
    return-void
.end method

.method private doReset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 419
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/deskclock/Utils;->clearSwSharedPref(Landroid/content/SharedPreferences;)V

    .line 420
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    const-string v2, "sw"

    invoke-virtual {v1, v0, v2}, Lcom/android/deskclock/CircleTimerView;->clearSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 421
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    .line 422
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->clearLaps()V

    .line 423
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showLaps()V

    .line 424
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1}, Lcom/android/deskclock/CircleTimerView;->stopIntervalAnimation()V

    .line 425
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1}, Lcom/android/deskclock/CircleTimerView;->reset()V

    .line 426
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    iget-wide v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/android/deskclock/timer/CountingTimerView;->setTime(JZZ)V

    .line 427
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v1, v4}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    .line 428
    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 429
    iput v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 430
    return-void
.end method

.method private doStart(J)V
    .locals 3
    .parameter "time"

    .prologue
    const/4 v2, 0x1

    .line 401
    iput-wide p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    .line 402
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->startUpdateThread()V

    .line 403
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->startIntervalAnimation()V

    .line 407
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 408
    iput v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 409
    return-void
.end method

.method private doStop()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 391
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->stopUpdateThread()V

    .line 392
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->pauseIntervalAnimation()V

    .line 393
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    iget-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/deskclock/timer/CountingTimerView;->setTime(JZZ)V

    .line 394
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v3}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    .line 395
    iget-wide v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateCurrentLap(J)V

    .line 396
    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 397
    iput v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 398
    return-void
.end method

.method private getLapShareTimes([J)[J
    .locals 9
    .parameter "input"

    .prologue
    .line 539
    if-nez p1, :cond_1

    .line 540
    const/4 v4, 0x0

    .line 552
    :cond_0
    return-object v4

    .line 543
    :cond_1
    array-length v3, p1

    .line 544
    .local v3, numLaps:I
    new-array v4, v3, [J

    .line 545
    .local v4, output:[J
    const-wide/16 v5, 0x0

    .line 546
    .local v5, prevLapElapsedTime:J
    add-int/lit8 v2, v3, -0x1

    .local v2, lap_i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 547
    aget-wide v0, p1, v2

    .line 548
    .local v0, lap:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 549
    sub-long v7, v0, v5

    aput-wide v7, v4, v2

    .line 550
    move-wide v5, v0

    .line 546
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 529
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/Stopwatches;->getShareTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v3}, Lcom/android/deskclock/timer/CountingTimerView;->getTimeString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getLapTimes()[J

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getLapShareTimes([J)[J

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/deskclock/stopwatch/Stopwatches;->buildShareResults(Landroid/content/Context;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    return-object v0
.end method

.method private reachedMaxLaps()Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x63

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFromSharedPref(Landroid/content/SharedPreferences;)V
    .locals 12
    .parameter "prefs"

    .prologue
    .line 711
    const-string v9, "sw_start_time"

    const-wide/16 v10, 0x0

    invoke-interface {p1, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    .line 712
    const-string v9, "sw_accum_time"

    const-wide/16 v10, 0x0

    invoke-interface {p1, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    .line 713
    const-string v9, "sw_state"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 714
    const-string v9, "sw_lap_num"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 715
    .local v5, numLaps:I
    iget-object v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    if-eqz v9, :cond_2

    .line 716
    iget-object v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getLapTimes()[J

    move-result-object v6

    .line 717
    .local v6, oldLaps:[J
    if-eqz v6, :cond_0

    array-length v9, v6

    if-ge v9, v5, :cond_2

    .line 718
    :cond_0
    new-array v4, v5, [J

    .line 719
    .local v4, laps:[J
    const-wide/16 v7, 0x0

    .line 720
    .local v7, prevLapElapsedTime:J
    const/4 v3, 0x0

    .local v3, lap_i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 721
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sw_lap_time_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, key:Ljava/lang/String;
    const-wide/16 v9, 0x0

    invoke-interface {p1, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 723
    .local v1, lap:J
    sub-int v9, v5, v3

    add-int/lit8 v9, v9, -0x1

    sub-long v10, v1, v7

    aput-wide v10, v4, v9

    .line 724
    move-wide v7, v1

    .line 720
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 726
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #lap:J
    :cond_1
    iget-object v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v9, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->setLapTimes([J)V

    .line 729
    .end local v3           #lap_i:I
    .end local v4           #laps:[J
    .end local v6           #oldLaps:[J
    .end local v7           #prevLapElapsedTime:J
    :cond_2
    const-string v9, "sw_update_circle"

    const/4 v10, 0x1

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 730
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 731
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doStop()V

    .line 738
    :cond_3
    :goto_1
    return-void

    .line 732
    :cond_4
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 733
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    invoke-direct {p0, v9, v10}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doStart(J)V

    goto :goto_1

    .line 734
    :cond_5
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    if-nez v9, :cond_3

    .line 735
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doReset()V

    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 825
    :cond_0
    return-void
.end method

.method private rightButtonAction()V
    .locals 8

    .prologue
    .line 229
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 230
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 231
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    const-string v4, "message_time"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 233
    const-string v4, "show_notification"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while pressing the right stopwatch button"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 237
    :pswitch_0
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 238
    iget-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    iget-wide v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    sub-long/2addr v0, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    .line 239
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doStop()V

    .line 240
    const-string v0, "stop_stopwatch"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doStart(J)V

    .line 248
    const-string v0, "start_stopwatch"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 250
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->acquireWakeLock()V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setButton(Landroid/widget/ImageButton;IIZI)V
    .locals 1
    .parameter "b"
    .parameter "text"
    .parameter "drawableId"
    .parameter "enabled"
    .parameter "visibility"

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 596
    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 597
    invoke-virtual {p1, p5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 598
    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 599
    return-void
.end method

.method private setButtons(I)V
    .locals 12
    .parameter "state"

    .prologue
    const v2, 0x7f0d0052

    const v11, 0x7f0d0050

    const v3, 0x7f020051

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 559
    packed-switch p1, :pswitch_data_0

    .line 581
    :goto_0
    return-void

    .line 561
    :pswitch_0
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButton(Landroid/widget/ImageButton;IIZI)V

    .line 563
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, v11}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setStartStopText(Landroid/widget/TextView;I)V

    .line 564
    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showShareButton(Z)V

    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->reachedMaxLaps()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    move-object v5, p0

    move v7, v2

    move v8, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButton(Landroid/widget/ImageButton;IIZI)V

    .line 569
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    const v1, 0x7f0d0051

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setStartStopText(Landroid/widget/TextView;I)V

    .line 570
    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showShareButton(Z)V

    goto :goto_0

    :cond_0
    move v9, v4

    .line 567
    goto :goto_1

    .line 573
    :pswitch_2
    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    const v7, 0x7f0d0053

    const v8, 0x7f02006c

    move-object v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButton(Landroid/widget/ImageButton;IIZI)V

    .line 575
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, v11}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setStartStopText(Landroid/widget/TextView;I)V

    .line 576
    invoke-direct {p0, v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showShareButton(Z)V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setStartStopText(Landroid/widget/TextView;I)V
    .locals 2
    .parameter "v"
    .parameter "text"

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, textStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 605
    return-void
.end method

.method private showLaps()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showShareButton(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 437
    :cond_0
    return-void

    .line 434
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private showSharePopup()V
    .locals 26

    .prologue
    .line 440
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v20

    .line 442
    .local v20, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 443
    .local v4, parent:Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 446
    .local v24, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v25

    .line 449
    .local v25, shareOptions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 523
    :goto_0
    return-void

    .line 452
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v6, shareOptionTitles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v7, shareOptionIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v14, shareOptionThreeTitles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v15, shareOptionThreeIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v8, shareOptionPackageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v9, shareOptionClassNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, option_i:I
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_2

    .line 460
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    .line 461
    .local v22, option:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 462
    .local v21, label:Ljava/lang/CharSequence;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 463
    .local v19, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_1

    const/4 v3, 0x3

    move/from16 v0, v23

    if-ge v0, v3, :cond_1

    .line 466
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_1
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 472
    .end local v19           #icon:Landroid/graphics/drawable/Drawable;
    .end local v21           #label:Ljava/lang/CharSequence;
    .end local v22           #option:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_3

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0079

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x106000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_4

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 479
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    .line 481
    :cond_4
    new-instance v3, Landroid/widget/ListPopupWindow;

    invoke-direct {v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 485
    new-instance v2, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

    const v5, 0x7f04001a

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 488
    .local v2, showAllAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_5

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    new-instance v10, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

    const v13, 0x7f04001a

    move-object/from16 v11, p0

    move-object v12, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;)V

    invoke-virtual {v3, v10}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 496
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    new-instance v5, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    new-instance v5, Lcom/android/deskclock/stopwatch/StopwatchFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$5;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f090013

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    goto/16 :goto_0

    .line 493
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method private startUpdateThread()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleTimerView;->post(Ljava/lang/Runnable;)Z

    .line 657
    return-void
.end method

.method private stopUpdateThread()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/CircleTimerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 661
    return-void
.end method

.method private updateCurrentLap(J)V
    .locals 3
    .parameter "totalTime"

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    .line 641
    .local v0, curLap:Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    iget-wide v1, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    sub-long v1, p1, v1

    iput-wide v1, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    .line 642
    iput-wide p1, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    .line 643
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->notifyDataSetChanged()V

    .line 645
    .end local v0           #curLap:Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    :cond_0
    return-void
.end method

.method private writeToSharedPref(Landroid/content/SharedPreferences;)V
    .locals 13
    .parameter "prefs"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 679
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 680
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "sw_start_time"

    iget-wide v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 681
    const-string v4, "sw_accum_time"

    iget-wide v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 682
    const-string v4, "sw_state"

    iget v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 683
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    if-eqz v4, :cond_0

    .line 684
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getLapTimes()[J

    move-result-object v3

    .line 685
    .local v3, laps:[J
    if-eqz v3, :cond_0

    .line 686
    const-string v4, "sw_lap_num"

    array-length v5, v3

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 687
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sw_lap_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, key:Ljava/lang/String;
    aget-wide v4, v3, v1

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #laps:[J
    :cond_0
    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    if-ne v4, v10, :cond_2

    .line 694
    const-string v4, "notif_clock_base"

    iget-wide v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    iget-wide v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    sub-long/2addr v5, v7

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 695
    const-string v4, "notif_clock_elapsed"

    invoke-interface {v0, v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 696
    const-string v4, "notif_clock_running"

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 706
    :cond_1
    :goto_1
    const-string v4, "sw_update_circle"

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 707
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 708
    return-void

    .line 697
    :cond_2
    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 698
    const-string v4, "notif_clock_elapsed"

    iget-wide v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 699
    const-string v4, "notif_clock_base"

    invoke-interface {v0, v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 700
    const-string v4, "notif_clock_running"

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 701
    :cond_3
    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    if-nez v4, :cond_1

    .line 702
    const-string v4, "notif_clock_base"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 703
    const-string v4, "notif_clock_running"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 704
    const-string v4, "notif_clock_elapsed"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0e0057

    const v2, 0x7f0e0056

    const v1, 0x7f0e0055

    const v6, 0x7f0e0054

    const/4 v7, 0x0

    .line 263
    const v3, 0x7f04001e

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 265
    .local v10, v:Landroid/view/View;
    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    .line 266
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;

    invoke-direct {v5, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    .line 299
    const v3, 0x7f0e0058

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    .line 301
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/deskclock/stopwatch/StopwatchFragment$2;

    invoke-direct {v5, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$2;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/deskclock/timer/CountingTimerView;

    .line 311
    .local v9, countingTimerView:Lcom/android/deskclock/timer/CountingTimerView;
    new-instance v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$3;

    invoke-direct {v3, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$3;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v9, v3}, Lcom/android/deskclock/timer/CountingTimerView;->registerVirtualButtonAction(Ljava/lang/Runnable;)V

    .line 317
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Lcom/android/deskclock/timer/CountingTimerView;->registerStopTextView(Landroid/widget/TextView;)V

    .line 318
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    .line 320
    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/CircleTimerView;

    iput-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    .line 321
    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/timer/CountingTimerView;

    iput-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    .line 322
    const v3, 0x7f0e0059

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    .line 323
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 324
    new-instance v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    .line 325
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    :cond_0
    const v3, 0x7f0e0053

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/CircleButtonsLinearLayout;

    .line 331
    .local v0, circleLayout:Lcom/android/deskclock/CircleButtonsLinearLayout;
    const v3, 0x7f0e0058

    const v5, 0x7f090046

    const v6, 0x7f090049

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/deskclock/CircleButtonsLinearLayout;->setCircleTimerViewIds(IIIIIIII)V

    .line 336
    return-object v10
.end method

.method public onPageChanged(I)V
    .locals 2
    .parameter "page"

    .prologue
    .line 383
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->acquireWakeLock()V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 362
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->stopUpdateThread()V

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 369
    invoke-direct {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 370
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    const-string v2, "sw"

    invoke-virtual {v1, v0, v2}, Lcom/android/deskclock/CircleTimerView;->writeToSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    .line 372
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1, p0}, Lcom/android/deskclock/DeskClock;->unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 377
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    .line 378
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onPause()V

    .line 379
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 341
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 343
    invoke-direct {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->readFromSharedPref(Landroid/content/SharedPreferences;)V

    .line 344
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    const-string v2, "sw"

    invoke-virtual {v1, v0, v2}, Lcom/android/deskclock/CircleTimerView;->readFromSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1}, Lcom/android/deskclock/CircleTimerView;->postInvalidate()V

    .line 347
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    invoke-direct {p0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 348
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    iget-wide v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/android/deskclock/timer/CountingTimerView;->setTime(JZZ)V

    .line 349
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    if-ne v1, v5, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->acquireWakeLock()V

    .line 351
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->startUpdateThread()V

    .line 355
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showLaps()V

    .line 356
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1, p0}, Lcom/android/deskclock/DeskClock;->registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 357
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onResume()V

    .line 358
    return-void

    .line 352
    :cond_1
    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v1, v5}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const-string v0, "sw_lap_num"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sw_lap_time_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    invoke-direct {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->readFromSharedPref(Landroid/content/SharedPreferences;)V

    .line 801
    const-string v0, "sw_update_circle"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    const-string v1, "sw"

    invoke-virtual {v0, p1, v1}, Lcom/android/deskclock/CircleTimerView;->readFromSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 806
    :cond_0
    return-void
.end method
