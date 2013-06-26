.class Lcom/android/deskclock/ClockFragment$2;
.super Ljava/lang/Object;
.source "ClockFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ClockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final MAX_MOVEMENT_ALLOWED:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ClockFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$2;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/deskclock/ClockFragment$2;->MAX_MOVEMENT_ALLOWED:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41a0

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 147
    :pswitch_0
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment$2;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/ClockFragment;->access$500(Lcom/android/deskclock/ClockFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 129
    :pswitch_1
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 130
    .local v0, time:J
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment$2;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/ClockFragment;->access$500(Lcom/android/deskclock/ClockFragment;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/deskclock/ClockFragment$2$1;

    invoke-direct {v5, p0}, Lcom/android/deskclock/ClockFragment$2$1;-><init>(Lcom/android/deskclock/ClockFragment$2;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/ClockFragment$2;->mLastTouchX:F

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/deskclock/ClockFragment$2;->mLastTouchY:F

    goto :goto_0

    .line 140
    .end local v0           #time:J
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/ClockFragment$2;->mLastTouchX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 141
    .local v2, xDiff:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/deskclock/ClockFragment$2;->mLastTouchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 142
    .local v3, yDiff:F
    cmpl-float v4, v2, v6

    if-gez v4, :cond_1

    cmpl-float v4, v3, v6

    if-ltz v4, :cond_0

    .line 143
    :cond_1
    iget-object v4, p0, Lcom/android/deskclock/ClockFragment$2;->this$0:Lcom/android/deskclock/ClockFragment;

    #getter for: Lcom/android/deskclock/ClockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/ClockFragment;->access$500(Lcom/android/deskclock/ClockFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
