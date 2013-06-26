.class Lcom/android/deskclock/timer/TimerFragment$2;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    #calls: Lcom/android/deskclock/timer/TimerFragment;->gotoTimersView()V
    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$700(Lcom/android/deskclock/timer/TimerFragment;)V

    .line 449
    :cond_0
    return-void
.end method
