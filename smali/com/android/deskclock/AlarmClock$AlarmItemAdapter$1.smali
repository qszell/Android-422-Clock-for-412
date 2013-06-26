.class Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 492
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$700(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 493
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I
    invoke-static {v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$700(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)I

    move-result v3

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->getViewById(I)Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$800(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;I)Landroid/view/View;

    move-result-object v1

    .line 494
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 495
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 496
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #getter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$900(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/widget/ListView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 498
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$1;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #setter for: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->mScrollAlarmId:I
    invoke-static {v2, v6}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$702(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;I)I

    .line 500
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method
