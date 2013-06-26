.class Lcom/android/deskclock/AlarmClock$2;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$2;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$2;->this$0:Lcom/android/deskclock/AlarmClock;

    const/4 v1, 0x1

    #calls: Lcom/android/deskclock/AlarmClock;->hideUndoBar(ZLandroid/view/MotionEvent;)V
    invoke-static {v0, v1, p2}, Lcom/android/deskclock/AlarmClock;->access$300(Lcom/android/deskclock/AlarmClock;ZLandroid/view/MotionEvent;)V

    .line 155
    const/4 v0, 0x0

    return v0
.end method
