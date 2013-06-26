.class Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

.field final synthetic val$o:Lcom/android/deskclock/timer/TimerObj;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;->val$o:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget-object v2, v2, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$1;->val$o:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/deskclock/timer/TimerFragment$ClickAction;-><init>(Lcom/android/deskclock/timer/TimerFragment;ILcom/android/deskclock/timer/TimerObj;)V

    #calls: Lcom/android/deskclock/timer/TimerFragment;->onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V
    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerFragment;->access$000(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V

    .line 209
    return-void
.end method
