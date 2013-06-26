.class public Lcom/android/deskclock/timer/TimerFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "TimerFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;,
        Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;,
        Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;,
        Lcom/android/deskclock/timer/TimerFragment$ClickAction;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

.field private mAddTimer:Landroid/widget/ImageButton;

.field private mCancel:Landroid/widget/Button;

.field private final mClockTick:Ljava/lang/Runnable;

.field private mLastVisibleView:Landroid/view/View;

.field private mNewTimerPage:Landroid/view/View;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSeperator:Landroid/view/View;

.field private mStart:Landroid/widget/Button;

.field private mTicking:Z

.field private mTimerFooter:Landroid/view/View;

.field private mTimerSetup:Lcom/android/deskclock/TimerSetupView;

.field private mTimersList:Landroid/widget/ListView;

.field private mTimersListPage:Landroid/view/View;

.field private mViewState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/deskclock/DeskClockFragment;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 81
    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 348
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/timer/TimerFragment$1;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->onLabelPressed(Lcom/android/deskclock/timer/TimerObj;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/timer/TimerFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/timer/TimerFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoTimersView()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/TimerSetupView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    return-void
.end method

.method private cancelTimerNotification(I)V
    .locals 1
    .parameter "timerId"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 918
    return-void
.end method

.method private gotoSetupView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 610
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e007f

    if-ne v1, v2, :cond_1

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 613
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 634
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopClockTicks()V

    .line 635
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 636
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :goto_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    invoke-virtual {v1}, Lcom/android/deskclock/TimerSetupView;->updateStartButton()V

    .line 643
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    invoke-virtual {v1}, Lcom/android/deskclock/TimerSetupView;->updateDeleteButton()V

    .line 644
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 645
    return-void

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 617
    .local v0, a:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 618
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 619
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$5;

    invoke-direct {v1, p0}, Lcom/android/deskclock/timer/TimerFragment$5;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 631
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 639
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 616
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private gotoTimersView()V
    .locals 4

    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e007b

    if-ne v1, v2, :cond_1

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 671
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->startClockTicks()V

    .line 672
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 673
    return-void

    .line 653
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 654
    .local v0, a:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 655
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 656
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$6;

    invoke-direct {v1, p0}, Lcom/android/deskclock/timer/TimerFragment$6;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 669
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 653
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V
    .locals 5
    .parameter "clickAction"

    .prologue
    .line 682
    iget v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mAction:I

    packed-switch v2, :pswitch_data_0

    .line 733
    :goto_0
    return-void

    .line 684
    :pswitch_0
    iget-object v1, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    .line 685
    .local v1, t:Lcom/android/deskclock/timer/TimerObj;
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 686
    iget v2, v1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 689
    :cond_0
    iget-object v2, v1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 690
    .local v0, a:Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 691
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 692
    new-instance v2, Lcom/android/deskclock/timer/TimerFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/android/deskclock/timer/TimerFragment$7;-><init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 720
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 723
    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #t:Lcom/android/deskclock/timer/TimerObj;
    :pswitch_1
    iget-object v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->onPlusOneButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V

    .line 724
    iget-object v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 727
    :pswitch_2
    iget-object v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->onStopButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V

    .line 728
    iget-object v2, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 689
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onLabelPressed(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 816
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "label_dialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 817
    .local v2, prev:Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 818
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 820
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 823
    iget-object v3, p1, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/android/deskclock/LabelDialogFragment;->newInstance(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;

    move-result-object v1

    .line 825
    .local v1, newFragment:Lcom/android/deskclock/LabelDialogFragment;
    const-string v3, "label_dialog"

    invoke-virtual {v1, v0, v3}, Lcom/android/deskclock/LabelDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 826
    return-void
.end method

.method private onPlusOneButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 9
    .parameter "t"

    .prologue
    const-wide/32 v2, 0xea60

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 736
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 770
    :goto_0
    return-void

    .line 738
    :pswitch_0
    invoke-virtual {p1, v2, v3}, Lcom/android/deskclock/timer/TimerObj;->addTime(J)V

    .line 739
    invoke-virtual {p1, v8}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v6

    .line 740
    .local v6, timeLeft:J
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 741
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0, v6, v7}, Lcom/android/deskclock/timer/TimerListItem;->setLength(J)V

    .line 742
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->notifyDataSetChanged()V

    .line 743
    const-string v0, "timer_update"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    .end local v6           #timeLeft:J
    :pswitch_1
    iput v5, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 748
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 749
    iput-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iput-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 750
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 751
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v3, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/TimerListItem;->set(JJZ)V

    .line 752
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    .line 753
    const-string v0, "timer_reset"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 754
    const-string v0, "start_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 755
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V

    .line 756
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    goto :goto_0

    .line 760
    :pswitch_2
    const/4 v0, 0x5

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 761
    iget-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 762
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->stop()V

    .line 763
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 764
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v3, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/TimerListItem;->set(JJZ)V

    .line 765
    const-string v0, "timer_reset"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onStopButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 6
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    .line 776
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 812
    :goto_0
    :pswitch_0
    return-void

    .line 779
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 780
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->pause()V

    .line 781
    invoke-virtual {p1, v1}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    .line 782
    const-string v0, "timer_stop"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :pswitch_2
    iput v1, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 787
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v4, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 788
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    .line 789
    const-string v0, "start_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 794
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->done()V

    .line 797
    :cond_0
    const-string v0, "timer_done"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 798
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 799
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 804
    :pswitch_4
    iput v1, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 805
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v4, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 806
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    .line 807
    const-string v0, "start_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private saveViewState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 574
    const-string v1, "_setup_selected"

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    const-string v1, "entry_state"

    invoke-virtual {v0, p1, v1}, Lcom/android/deskclock/TimerSetupView;->saveEntryState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 576
    return-void

    .line 574
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 12
    .parameter "t"

    .prologue
    const v11, 0x7f0d0063

    const v10, 0x7f0d0060

    const v9, 0x7f0b0011

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 840
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 841
    .local v0, a:Landroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    iget-object v5, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v6, 0x7f0e008a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 845
    .local v2, plusOne:Landroid/widget/ImageButton;
    iget-object v5, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v6, 0x7f0e006a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/CountingTimerView;

    .line 847
    .local v1, countingTimerView:Lcom/android/deskclock/timer/CountingTimerView;
    iget-object v5, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v6, 0x7f0e008b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 848
    .local v4, stop:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 849
    .local v3, r:Landroid/content/res/Resources;
    iget v5, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 851
    :pswitch_0
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 852
    const v5, 0x7f0d0062

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 853
    const v5, 0x7f020069

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 854
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 855
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 856
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 857
    invoke-virtual {v1, v8}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto :goto_0

    .line 860
    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 861
    const v5, 0x7f0d0064

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 862
    const v5, 0x7f02006c

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 863
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 864
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 865
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 866
    invoke-virtual {v1, v8}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 869
    :pswitch_2
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 870
    const v5, 0x7f020069

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 871
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 872
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 873
    invoke-virtual {v1, v8}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 876
    :pswitch_3
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 877
    const v5, 0x7f0d0064

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 878
    const v5, 0x7f02006c

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 879
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 880
    invoke-virtual {v1, v7}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 883
    :pswitch_4
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 884
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 886
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 887
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 888
    invoke-virtual {v1, v8}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private startClockTicks()V
    .locals 4

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 898
    return-void
.end method

.method private stopClockTicks()V
    .locals 2

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 904
    :cond_0
    return-void
.end method

.method private updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 3
    .parameter "t"
    .parameter "action"

    .prologue
    .line 907
    const-string v1, "delete_timer"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v1}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 910
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 911
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v1, "timer.intent.extra"

    iget v2, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 914
    return-void
.end method

.method private updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 2
    .parameter "timerObj"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->removeTimer(Lcom/android/deskclock/timer/TimerObj;)V

    .line 923
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    invoke-interface {v0}, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;->onEmptyList()V

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    invoke-interface {v0}, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;->onListChanged()V

    goto :goto_0
.end method


# virtual methods
.method createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    .locals 1
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;-><init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;-><init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 677
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    .line 678
    .local v0, tag:Lcom/android/deskclock/timer/TimerFragment$ClickAction;
    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V

    .line 679
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 393
    if-eqz p1, :cond_0

    .line 394
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 397
    :cond_0
    invoke-super {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 398
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f0b0008

    const/4 v8, 0x0

    .line 404
    const v7, 0x7f040027

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 407
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 408
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v7, "times_up"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 409
    const-string v7, "times_up"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    const v7, 0x7f0e007c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    .line 421
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/deskclock/DeskClock;

    if-eqz v7, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f09004d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 423
    .local v1, dividerHeight:F
    const v7, 0x7f040007

    iget-object v9, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {p1, v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 424
    .local v3, footerView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 425
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 426
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 428
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 429
    const v7, 0x7f040008

    iget-object v9, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {p1, v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 430
    .local v4, headerView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 431
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 432
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 438
    .end local v1           #dividerHeight:F
    .end local v3           #footerView:Landroid/view/View;
    .end local v4           #headerView:Landroid/view/View;
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    const v7, 0x7f0e007f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    .line 439
    const v7, 0x7f0e007b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    .line 440
    const v7, 0x7f0e0080

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/deskclock/TimerSetupView;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    .line 441
    const v7, 0x7f0e0082

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    .line 442
    const v7, 0x7f0e0081

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    .line 443
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    new-instance v9, Lcom/android/deskclock/timer/TimerFragment$2;

    invoke-direct {v9, p0}, Lcom/android/deskclock/timer/TimerFragment$2;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    const v7, 0x7f0e0083

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    .line 452
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    new-instance v9, Lcom/android/deskclock/timer/TimerFragment$3;

    invoke-direct {v9, p0}, Lcom/android/deskclock/timer/TimerFragment$3;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    iget-object v9, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Lcom/android/deskclock/TimerSetupView;->registerStartButton(Landroid/widget/Button;)V

    .line 472
    const v7, 0x7f0e007e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mAddTimer:Landroid/widget/ImageButton;

    .line 473
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mAddTimer:Landroid/widget/ImageButton;

    new-instance v9, Lcom/android/deskclock/timer/TimerFragment$4;

    invoke-direct {v9, p0}, Lcom/android/deskclock/timer/TimerFragment$4;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    const v7, 0x7f0e007d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerFooter:Landroid/view/View;

    .line 482
    iget-object v9, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerFooter:Landroid/view/View;

    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-nez v7, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 483
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 484
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mNotificationManager:Landroid/app/NotificationManager;

    .line 487
    return-object v6

    .line 412
    :catch_0
    move-exception v2

    .line 413
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v7, "TimerFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " must implement OnEmptyListListener"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 435
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_1
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 482
    :cond_2
    const/16 v7, 0x8

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 493
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->saveViewState(Landroid/os/Bundle;)V

    .line 494
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onDestroyView()V

    .line 495
    return-void
.end method

.method public onPageChanged(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 555
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->sort()V

    .line 558
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/deskclock/DeskClock;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/DeskClock;->unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 545
    :cond_0
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onPause()V

    .line 546
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopClockTicks()V

    .line 547
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->saveGlobalState()V

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 551
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 499
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/deskclock/DeskClock;

    if-eqz v5, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v5, p0}, Lcom/android/deskclock/DeskClock;->registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 502
    :cond_0
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onResume()V

    .line 503
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v5, v6}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 506
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v12}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 508
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "from_notification"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "timer_notif_time"

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v7

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 513
    .local v1, now:J
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "timer_notif_id"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 514
    .local v4, timerId:I
    if-eq v4, v10, :cond_1

    .line 515
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget-object v5, v5, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/android/deskclock/timer/Timers;->findTimer(Ljava/util/ArrayList;I)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v3

    .line 516
    .local v3, t:Lcom/android/deskclock/timer/TimerObj;
    iget-wide v5, v3, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v7, v3, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    sub-long v7, v1, v7

    sub-long/2addr v5, v7

    iput-wide v5, v3, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 517
    invoke-direct {p0, v4}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 519
    .end local v3           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 520
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "from_notification"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 523
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #now:J
    .end local v4           #timerId:I
    :cond_2
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "from_alert"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 526
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 527
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "from_alert"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 528
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 531
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 532
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 533
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 534
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 536
    :cond_4
    iput-object v12, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 537
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->setPage()V

    .line 538
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 562
    invoke-super {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 563
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mNewTimerPage:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 567
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->saveViewState(Landroid/os/Bundle;)V

    .line 571
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 938
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 939
    const-string v5, "from_notification"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "timer_notif_id"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "timer_notif_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "from_notification"

    invoke-interface {p1, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 948
    const-string v5, "timer_notif_time"

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v6

    invoke-interface {p1, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 949
    .local v1, now:J
    const-string v5, "timer_notif_id"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 950
    .local v4, timerId:I
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v5, v6}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 951
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v10}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 952
    if-eq v4, v8, :cond_1

    .line 953
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget-object v5, v5, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->mTimers:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/android/deskclock/timer/Timers;->findTimer(Ljava/util/ArrayList;I)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v3

    .line 954
    .local v3, t:Lcom/android/deskclock/timer/TimerObj;
    iget-wide v5, v3, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v7, v3, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    sub-long v7, v1, v7

    sub-long/2addr v5, v7

    iput-wide v5, v3, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 955
    invoke-direct {p0, v4}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 957
    .end local v3           #t:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 958
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 959
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "from_notification"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 960
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 962
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #now:J
    .end local v4           #timerId:I
    :cond_2
    const-string v5, "from_alert"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "from_alert"

    invoke-interface {p1, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 965
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 966
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "from_alert"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 968
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v5, v6}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 969
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v10}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 970
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 973
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    return-void
.end method

.method public restartAdapter()V
    .locals 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 933
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 934
    return-void
.end method

.method public setLabel(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 3
    .parameter "timer"
    .parameter "label"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget v2, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->findTimerPositionById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerObj;

    iput-object p2, v0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    .line 831
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->showExpiredAlarmNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 837
    return-void
.end method

.method public setPage()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 580
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    const-string v2, "_setup_selected"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 582
    .local v0, switchToSetupView:Z
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    const-string v3, "entry_state"

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/TimerSetupView;->restoreEntryState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 583
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 587
    :goto_0
    if-eqz v0, :cond_2

    .line 588
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V

    .line 592
    :goto_1
    return-void

    .line 585
    .end local v0           #switchToSetupView:Z
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .restart local v0       #switchToSetupView:Z
    :cond_1
    goto :goto_0

    .line 590
    :cond_2
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoTimersView()V

    goto :goto_1
.end method

.method public stopAllTimesUpTimers()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 595
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    move v1, v3

    .line 596
    .local v1, notifyChange:Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 597
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/timer/TimerObj;

    .line 598
    .local v2, timerObj:Lcom/android/deskclock/timer/TimerObj;
    iget v5, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 599
    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->onStopButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .end local v1           #notifyChange:Z
    .end local v2           #timerObj:Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    move v1, v4

    .line 595
    goto :goto_0

    .line 602
    .restart local v1       #notifyChange:Z
    :cond_2
    if-eqz v1, :cond_3

    .line 603
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 604
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "from_alert"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 607
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    return-void
.end method
