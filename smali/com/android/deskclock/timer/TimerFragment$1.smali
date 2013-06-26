.class Lcom/android/deskclock/timer/TimerFragment$1;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mVisible:Z

.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 356
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    rem-long/2addr v9, v11

    const-wide/16 v11, 0x1f4

    cmp-long v6, v9, v11

    if-gez v6, :cond_5

    move v5, v7

    .line 357
    .local v5, visible:Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    if-eq v6, v5, :cond_6

    move v4, v7

    .line 358
    .local v4, toggle:Z
    :goto_1
    iput-boolean v5, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    .line 359
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v6}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 360
    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v6}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 361
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    iget v6, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-eq v6, v7, :cond_0

    iget v6, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v6, v13, :cond_1

    .line 362
    :cond_0
    invoke-virtual {v1, v8}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v2

    .line 363
    .local v2, timeLeft:J
    iget-object v6, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    if-eqz v6, :cond_1

    .line 364
    iget-object v6, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v6, v2, v3, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 367
    .end local v2           #timeLeft:J
    :cond_1
    iget-wide v9, v1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-gtz v6, :cond_2

    iget v6, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v9, 0x4

    if-eq v6, v9, :cond_2

    iget v6, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v9, 0x5

    if-eq v6, v9, :cond_2

    .line 369
    iput v13, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 370
    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #calls: Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V
    invoke-static {v6, v1}, Lcom/android/deskclock/timer/TimerFragment;->access$100(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V

    .line 371
    iget-object v6, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    if-eqz v6, :cond_2

    .line 372
    iget-object v6, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v6}, Lcom/android/deskclock/timer/TimerListItem;->timesUp()V

    .line 377
    :cond_2
    if-eqz v4, :cond_4

    iget-object v6, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    if-eqz v6, :cond_4

    .line 378
    iget v6, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v6, v13, :cond_3

    .line 379
    iget-object v6, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    iget-boolean v9, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    invoke-virtual {v6, v9}, Lcom/android/deskclock/timer/TimerListItem;->setCircleBlink(Z)V

    .line 381
    :cond_3
    iget v6, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_4

    .line 382
    iget-object v6, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v6, Lcom/android/deskclock/timer/TimerListItem;

    iget-boolean v9, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    invoke-virtual {v6, v9}, Lcom/android/deskclock/timer/TimerListItem;->setTextBlink(Z)V

    .line 359
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .end local v0           #i:I
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    .end local v4           #toggle:Z
    .end local v5           #visible:Z
    :cond_5
    move v5, v8

    .line 356
    goto/16 :goto_0

    .restart local v5       #visible:Z
    :cond_6
    move v4, v8

    .line 357
    goto/16 :goto_1

    .line 386
    .restart local v0       #i:I
    .restart local v4       #toggle:Z
    :cond_7
    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/deskclock/timer/TimerFragment;->access$500(Lcom/android/deskclock/timer/TimerFragment;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x14

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    return-void
.end method
