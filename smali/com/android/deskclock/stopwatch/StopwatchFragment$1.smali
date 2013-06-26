.class Lcom/android/deskclock/stopwatch/StopwatchFragment$1;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 269
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 270
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-virtual {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 271
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v4, "message_time"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 273
    const-string v4, "show_notification"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iget v4, v4, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iget v1, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while pressing the left stopwatch button"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    #calls: Lcom/android/deskclock/stopwatch/StopwatchFragment;->addLapTime(J)V
    invoke-static {v4, v0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;J)V

    .line 278
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    #calls: Lcom/android/deskclock/stopwatch/StopwatchFragment;->doLap()V
    invoke-static {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    .line 279
    const-string v0, "lap_stopwatch"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    #calls: Lcom/android/deskclock/stopwatch/StopwatchFragment;->doReset()V
    invoke-static {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$200(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    .line 285
    const-string v0, "reset_stopwatch"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 287
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    #calls: Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$300(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
