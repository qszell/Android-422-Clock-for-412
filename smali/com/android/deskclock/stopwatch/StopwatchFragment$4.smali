.class Lcom/android/deskclock/stopwatch/StopwatchFragment$4;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;->showSharePopup()V
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
    .line 496
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v5, 0x7f0e004d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 500
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-virtual {v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0079

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 501
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    #getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$600(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v6

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

    invoke-virtual {v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->getShowAllAdapter()Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    #getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$600(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->show()V

    .line 513
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    #calls: Lcom/android/deskclock/stopwatch/StopwatchFragment;->getShareIntent()Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$700(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/content/Intent;

    move-result-object v2

    .line 508
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

    .line 509
    .local v0, adapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;
    invoke-virtual {v0, p3}, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v0, p3}, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;->getClassName(I)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-virtual {v5, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
