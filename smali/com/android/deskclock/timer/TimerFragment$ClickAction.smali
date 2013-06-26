.class Lcom/android/deskclock/timer/TimerFragment$ClickAction;
.super Ljava/lang/Object;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickAction"
.end annotation


# instance fields
.field public mAction:I

.field public mTimer:Lcom/android/deskclock/timer/TimerObj;

.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/timer/TimerFragment;ILcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .parameter
    .parameter "action"
    .parameter "t"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mAction:I

    .line 96
    iput-object p3, p0, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    .line 97
    return-void
.end method
