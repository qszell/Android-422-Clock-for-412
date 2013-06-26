.class Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$2;
.super Lcom/android/deskclock/DeskClock$OnTapListener;
.source "TimerFragment.java"


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
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;Landroid/app/Activity;Landroid/widget/TextView;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$2;->this$1:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iput-object p4, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$2;->val$o:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, p2, p3}, Lcom/android/deskclock/DeskClock$OnTapListener;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected processClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$2;->this$1:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter$2;->val$o:Lcom/android/deskclock/timer/TimerObj;

    #calls: Lcom/android/deskclock/timer/TimerFragment;->onLabelPressed(Lcom/android/deskclock/timer/TimerObj;)V
    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerFragment;->access$200(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V

    .line 247
    return-void
.end method
