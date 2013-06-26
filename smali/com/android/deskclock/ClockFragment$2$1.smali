.class Lcom/android/deskclock/ClockFragment$2$1;
.super Ljava/lang/Object;
.source "ClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ClockFragment$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/ClockFragment$2;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ClockFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$2$1;->this$1:Lcom/android/deskclock/ClockFragment$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/deskclock/ClockFragment$2$1;->this$1:Lcom/android/deskclock/ClockFragment$2;

    iget-object v0, v0, Lcom/android/deskclock/ClockFragment$2;->this$0:Lcom/android/deskclock/ClockFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/deskclock/ClockFragment$2$1;->this$1:Lcom/android/deskclock/ClockFragment$2;

    iget-object v2, v2, Lcom/android/deskclock/ClockFragment$2;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-virtual {v2}, Lcom/android/deskclock/ClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ClockFragment;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method
