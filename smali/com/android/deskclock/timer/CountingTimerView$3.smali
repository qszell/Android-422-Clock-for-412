.class Lcom/android/deskclock/timer/CountingTimerView$3;
.super Ljava/lang/Object;
.source "CountingTimerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/CountingTimerView;->registerVirtualButtonAction(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/CountingTimerView;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/CountingTimerView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView$3;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    iput-object p2, p0, Lcom/android/deskclock/timer/CountingTimerView$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 564
    return-void
.end method
